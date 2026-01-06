.class Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;
.super Lcom/samsung/android/gesture/PocketDumpData;
.source "PocketDumpData.java"


# instance fields
.field private mOverlabTime:J

.field private mPalmCntTotal:J

.field private mScreenOnDuration:J

.field private mShortCntTotal:J

.field private mShowAPDPopUpTime:J

.field private mShowPocketModePopUpTime:J

.field private mShowTotalPopUpTime:J

.field private mTime:Ljava/lang/String;

.field private mblockedratebyapd:I

.field private mblockedratebyboth:I

.field private mblockedratebypocketmode:I

.field private mblockedratetotal:I

.field private mtouchedCntTotal:I

.field private mtouchedCntbyAPD:I

.field private mtouchedCntbyBoth:I

.field private mtouchedCntbyPocketMode:I


# direct methods
.method public constructor <init>(JIIIIIIIIJJJJJII)V
    .locals 16
    .param p1, "timeStamp"    # J
    .param p3, "touchedCntTotal"    # I
    .param p4, "touchedCntbyPocketMode"    # I
    .param p5, "touchedCntbyAPD"    # I
    .param p6, "touchedCntbyBoth"    # I
    .param p7, "blockedratetotal"    # I
    .param p8, "blockedratebypocketmode"    # I
    .param p9, "blockedratebyapd"    # I
    .param p10, "blockedratebyboth"    # I
    .param p11, "screenOnDuration"    # J
    .param p13, "showPocketModePopUpTime"    # J
    .param p15, "showAPDPopUpTime"    # J
    .param p17, "overlabTime"    # J
    .param p19, "showTotalPopUpTime"    # J
    .param p21, "palmCntTotal"    # I
    .param p22, "shortCntTotal"    # I

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketDumpData;-><init>()V

    .line 197
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    move-wide/from16 v3, p1

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mTime:Ljava/lang/String;

    .line 199
    move/from16 v1, p3

    iput v1, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntTotal:I

    .line 200
    move/from16 v2, p4

    iput v2, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntbyPocketMode:I

    .line 201
    move/from16 v5, p5

    iput v5, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntbyAPD:I

    .line 202
    move/from16 v6, p6

    iput v6, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntbyBoth:I

    .line 204
    move/from16 v7, p7

    iput v7, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratetotal:I

    .line 205
    move/from16 v8, p8

    iput v8, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratebypocketmode:I

    .line 206
    move/from16 v9, p9

    iput v9, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratebyapd:I

    .line 207
    move/from16 v10, p10

    iput v10, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratebyboth:I

    .line 208
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mScreenOnDuration:J

    .line 209
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShowPocketModePopUpTime:J

    .line 210
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShowAPDPopUpTime:J

    .line 211
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mOverlabTime:J

    .line 212
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShowTotalPopUpTime:J

    .line 213
    move/from16 v15, p21

    int-to-long v1, v15

    iput-wide v1, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mPalmCntTotal:J

    .line 214
    move/from16 v1, p22

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShortCntTotal:J

    .line 215
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Screen On Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PopUp touch Count, Total : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pocketmode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntbyPocketMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", APD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntbyAPD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PocketMode&APD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mtouchedCntbyBoth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n                                          PopUp touch Blocked Rate, Total : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratetotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%, (pocketmode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratebypocketmode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%, APD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratebyapd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%, PocketMode&APD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mblockedratebyboth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%) \n                                          PopUp Show Time, Screen on Duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mScreenOnDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, (Total.T : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShowTotalPopUpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, P.T : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShowPocketModePopUpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, A.T : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShowAPDPopUpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, O.T : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mOverlabTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms) \n                                          PopUp touch Count option, touchedWithPalmCntTotal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mPalmCntTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchedShortCntTotal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketDumpTouchBlockedRateInfo;->mShortCntTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
