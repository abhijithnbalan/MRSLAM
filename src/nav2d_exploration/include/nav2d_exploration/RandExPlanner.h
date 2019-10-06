#ifndef RANDEXPLANNER_H_
#define RANDEXPLANNER_H_

#include <nav2d_navigator/ExplorationPlanner.h>
#include <stdio.h>
class RandExPlanner : public ExplorationPlanner
{
public:
        RandExPlanner();
        ~RandExPlanner();
        
        int findExplorationTarget(GridMap* map, unsigned int start, unsigned int &goal);
        
private:
        typedef std::vector<unsigned int> Frontier;
        typedef std::vector<Frontier> FrontierList;
        
        // Methods
        void findCluster(GridMap* map, unsigned int startCell);
        
        // ROS-Stuff
        ros::Publisher mFrontierPublisher;
        
        // Components
        std::vector<float> CumuWeights;
        RobotList mRobotList;
        FrontierList mFrontiers;
        double* mPlan;
        unsigned int mFrontierCells;

        // Parameters
        int mRobotID;
        bool mVisualizeFrontiers;
        double mMinTargetAreaSize;
        unsigned int mOffset[8];
};

#endif // RANDEXPLANNER_H_
