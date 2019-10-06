#ifndef RandExPLANNER_H_
#define RandExPLANNER_H_

#include <nav2d_navigator/ExplorationPlanner.h>

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

#endif // RandExPLANNER_H_
