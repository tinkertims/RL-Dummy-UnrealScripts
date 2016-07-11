/*******************************************************************************
 * GameEvent_Soccar_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameEvent_Soccar_TA extends GameEvent_Team_TA
    collapsecategories
    notplaceable;

/** For comparing different car settings */
var() Car_TA TestCarArchetype;
/** Ball to spawn for this level */
var(Setup) Ball_TA BallArchetype;
var GoalIndicator_TA GoalIndicatorArchetype;
/** Precalculated data for this arena. If not specified, uses closest one */
var(Setup) Pylon_Soccar_TA Pylon;
/** Where to spawn the ball. If not set will spawn the ball at center */
var(Setup) Actor BallSpawnPoint;
/** Handles giving XP to players */
//var() StatFactory_TA StatFactoryArchetype;
/** Initial State Game Event goes to OnInit */
var() name InitialEventState;
/** How many games to play per match */
var() int MatchGames;
/** How long a game is */
var() int GameTime;
/** How long to wait for players to connect */
var() int WaitForPlayersTime;
/** Min time to do warmup camera */
var() int WarmupTime;
/** A team wins if they reach this score */
var() int MaxScore;
/** Slomo when goal scored */
var() InterpCurveFloat ScoreSlomoCurve;
var protected transient float ScoreSlomoTime;
var transient float GameTimeRemaining;
var protectedwrite repnotify transient int SecondsRemaining;
var protectedwrite transient float TotalGameTimePlayed;
var privatewrite transient int GamesPlayed;
//var Message_TA GoalScoredMessage;
//var Message_TA OvertimeMessage;
//var Message_TA OneMinRemainingMessage;
//var Message_TA ThirtySecondsRemainingMessage;
//var protectedwrite transient bool bRoundActive;
/** if false, will not play replay when a goal is scored */
var() bool bPlayReplays;
var protectedwrite transient bool bBallHasBeenHit;
var privatewrite repnotify transient bool bOverTime;
var privatewrite transient bool bWentIntoOvertime;
var privatewrite transient bool bPlayedGameStartMusic;
var const bool bKickOnTrialEnd;
var privatewrite transient bool bNoContest;
var private transient int NextSpawnIndex;
/** handles replay recording and playback */
var() ReplayDirector_TA ReplayDirectorArchetype;
var protectedwrite repnotify transient ReplayDirector_TA ReplayDirector;
var privatewrite transient array<Ball_TA> GameBalls;
var() privatewrite int TotalGameBalls;
/** Delay between goal score and replay/round restart */
var() float PostGoalTime;
//var privatewrite transient StatFactory_TA StatFactory;
var privatewrite export editinline transient array<export editinline Goal_TA> Goals;
/** When to start doing second-by-second countdown before the game is over */
var() int SecondsRemainingCountdown;
//var() Message_TA SecondsRemainingMessage;
var privatewrite transient Vector FieldCenter;
var privatewrite repnotify transient Team_TA GameWinner;
var privatewrite repnotify transient Team_TA MatchWinner;
//var privatewrite transient PRI_TA MVP;
var privatewrite repnotify transient byte ReplicatedScoredOnTeam;
var privatewrite transient int RoundNum;
//var private repnotify transient ReplicatedStingerData ReplicatedMusicStinger;
//var() AkSoundCue InGameMusicCue;
/** Amount of idle time to add to all players after a replay */
var() const float KickIdleReplayOffset;
/** Only give assists if assisted within this amount of time */
var() float AssistMaxTime;
/** Keeps track of players for skill reasons */
//var() SkillGame_X SkillGameArchetype;
//var privatewrite transient SkillGame_X SkillGame;
var float BallHasBeenHitStartDelay;
/** Framerate that should be considered low FPS while active */
var() float LowFPSRate;
/** Report this server if its LowFPSTime exceeds this threshold */
var() float LowFPSTimeThreshold;
var private transient float LowFPSTime;
/**
var delegate<EventActiveRoundChanged> __EventActiveRoundChanged__Delegate;
var delegate<EventBallAdded> __EventBallAdded__Delegate;
var delegate<EventBallRemoved> __EventBallRemoved__Delegate;
var delegate<EventFirstBallHit> __EventFirstBallHit__Delegate;
var delegate<EventGoalScored> __EventGoalScored__Delegate;
var delegate<EventGameTimeUpdated> __EventGameTimeUpdated__Delegate;
var delegate<EventOvertimeUpdated> __EventOvertimeUpdated__Delegate;
var delegate<EventGameEnded> __EventGameEnded__Delegate;
var delegate<EventMatchEnded> __EventMatchEnded__Delegate;
var delegate<EventEndGameCountDown> __EventEndGameCountDown__Delegate;
var delegate<EventGameOverStingerWin> __EventGameOverStingerWin__Delegate;
var delegate<EventGameOverStingerLose> __EventGameOverStingerLose__Delegate;
var delegate<EventGameOverStingerForfeit> __EventGameOverStingerForfeit__Delegate;
var delegate<EventReplayDirectorSet> __EventReplayDirectorSet__Delegate;
var delegate<EventMatchWinnerSet>
**/