
"use strict";

let CommContent = require('./CommContent.js');
let SCDSPSOGet = require('./SCDSPSOGet.js');
let BlackBoardPut = require('./BlackBoardPut.js');
let BlackBoardQuery = require('./BlackBoardQuery.js');
let VirtualStigmergyPut = require('./VirtualStigmergyPut.js');
let CommPacket = require('./CommPacket.js');
let SCDSPSOPut = require('./SCDSPSOPut.js');
let VirtualStigmergyQuery = require('./VirtualStigmergyQuery.js');
let NeighborBroadcastKeyValue = require('./NeighborBroadcastKeyValue.js');
let VirtualStigmergyPuts = require('./VirtualStigmergyPuts.js');
let LeaveSwarm = require('./LeaveSwarm.js');
let BlackBoardAck = require('./BlackBoardAck.js');
let BarrierAck = require('./BarrierAck.js');
let SwarmList = require('./SwarmList.js');
let RobotBase = require('./RobotBase.js');
let BarrierSyn = require('./BarrierSyn.js');
let JoinSwarm = require('./JoinSwarm.js');
let CommHeader = require('./CommHeader.js');

module.exports = {
  CommContent: CommContent,
  SCDSPSOGet: SCDSPSOGet,
  BlackBoardPut: BlackBoardPut,
  BlackBoardQuery: BlackBoardQuery,
  VirtualStigmergyPut: VirtualStigmergyPut,
  CommPacket: CommPacket,
  SCDSPSOPut: SCDSPSOPut,
  VirtualStigmergyQuery: VirtualStigmergyQuery,
  NeighborBroadcastKeyValue: NeighborBroadcastKeyValue,
  VirtualStigmergyPuts: VirtualStigmergyPuts,
  LeaveSwarm: LeaveSwarm,
  BlackBoardAck: BlackBoardAck,
  BarrierAck: BarrierAck,
  SwarmList: SwarmList,
  RobotBase: RobotBase,
  BarrierSyn: BarrierSyn,
  JoinSwarm: JoinSwarm,
  CommHeader: CommHeader,
};
