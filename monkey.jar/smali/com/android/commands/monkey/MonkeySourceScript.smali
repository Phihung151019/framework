.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_END_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureAppFramerate"

.field private static final EVENT_KEYWORD_END_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureFramerate"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_PINCH_ZOOM:Ljava/lang/String; = "PinchZoom"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_ROTATION:Ljava/lang/String; = "RotateScreen"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_START_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureAppFramerate"

.field private static final EVENT_KEYWORD_START_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureFramerate"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_LINE_BY_LINE:Ljava/lang/String; = "linebyline"

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z = false


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mLastX:[F

.field private mLastY:[F

.field private mMonkeyStartTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mReadScriptLineByLine:Z

.field private mScriptFileName:Ljava/lang/String;

.field private mScriptStartTime:J

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    const/16 v0, 0x7d0

    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .locals 5
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "profileWaitTime"    # J
    .param p8, "deviceSleepTime"    # J

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 50
    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 52
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 64
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 66
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 68
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 70
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 72
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 75
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 146
    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 148
    const-wide/16 v3, 0x7530

    iput-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 157
    const/4 v0, 0x2

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    .line 159
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    .line 161
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    .line 163
    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    .line 173
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 175
    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 176
    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 177
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .locals 10
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyKeyEvent;

    .line 895
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    const-wide/16 v0, 0x0

    .line 899
    .local v0, "thisDownTime":J
    const-wide/16 v4, 0x0

    .line 900
    .local v4, "thisEventTime":J
    const-wide/16 v6, 0x0

    .line 902
    .local v6, "expectedDelay":J
    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v2, v8, v2

    if-gtz v2, :cond_1

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 905
    move-wide v2, v0

    .end local v4    # "thisEventTime":J
    .local v2, "thisEventTime":J
    goto :goto_1

    .line 907
    .end local v2    # "thisEventTime":J
    .restart local v4    # "thisEventTime":J
    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2

    .line 908
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v0

    goto :goto_0

    .line 910
    :cond_2
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 912
    :goto_0
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v2, v8

    double-to-long v6, v2

    .line 913
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long/2addr v2, v6

    .line 915
    .end local v4    # "thisEventTime":J
    .restart local v2    # "thisEventTime":J
    const-wide/16 v4, 0x10

    sub-long v4, v6, v4

    invoke-direct {p0, v4, v5}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    .line 917
    :goto_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 918
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 919
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    .line 920
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    .line 921
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 922
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 923
    return-void
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 932
    .local v0, "thisEventTime":J
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    move-result-wide v2

    .line 934
    .local v2, "thisDownTime":J
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 936
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    goto :goto_0

    .line 939
    :cond_0
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 941
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 942
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 945
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 946
    return-void
.end method

.method private closeFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 809
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 813
    :goto_0
    return-void
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 43
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .line 281
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "DispatchKey"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v0, :cond_0

    array-length v0, v3

    if-ne v0, v5, :cond_0

    .line 283
    :try_start_0
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v5, " old key\n"

    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 284
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v16, v13

    .line 285
    .local v16, "downTime":J
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 286
    .local v18, "eventTime":J
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 287
    .local v20, "action":I
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 288
    .local v21, "code":I
    aget-object v0, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 289
    .local v22, "repeat":I
    aget-object v0, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 290
    .local v23, "metaState":I
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 291
    .local v24, "device":I
    aget-object v0, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 293
    .local v25, "scancode":I
    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct/range {v15 .. v25}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    move/from16 v0, v21

    .line 295
    .end local v21    # "code":I
    .local v0, "code":I
    .local v15, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    sget-object v4, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Key code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 297
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 298
    sget-object v4, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v5, "Added key up \n"

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "code":I
    .end local v15    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v16    # "downTime":J
    .end local v18    # "eventTime":J
    .end local v20    # "action":I
    .end local v22    # "repeat":I
    .end local v23    # "metaState":I
    .end local v24    # "device":I
    .end local v25    # "scancode":I
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v0, "DispatchPointer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, "Pointer"

    const/16 v16, 0xa

    move/from16 v17, v5

    const-string v5, "DispatchTrackball"

    const/16 v18, 0xb

    const/16 v15, 0xc

    move/from16 v19, v7

    const/16 v7, 0x9

    if-gez v13, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_3

    :cond_1
    array-length v13, v3

    if-ne v13, v15, :cond_3

    .line 308
    :try_start_1
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v22, v20

    .line 309
    .local v22, "downTime":J
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 310
    .local v11, "eventTime":J
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "action":I
    aget-object v5, v3, v9

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move/from16 v26, v5

    .line 312
    .local v26, "x":F
    aget-object v5, v3, v19

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    .line 313
    .local v27, "y":F
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    .line 314
    .local v28, "pressure":F
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 315
    .local v29, "size":F
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 316
    .local v4, "metaState":I
    aget-object v5, v3, v17

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 317
    .local v5, "xPrecision":F
    aget-object v6, v3, v7

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 318
    .local v6, "yPrecision":F
    aget-object v7, v3, v16

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 319
    .local v7, "device":I
    aget-object v8, v3, v18

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 322
    .local v8, "edgeFlags":I
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    .line 323
    new-instance v9, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v9, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .local v9, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_1

    .line 325
    .end local v9    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :cond_2
    new-instance v9, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v9, v0}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    .line 328
    .restart local v9    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_1
    move-wide/from16 v13, v22

    .end local v22    # "downTime":J
    .local v13, "downTime":J
    invoke-virtual {v9, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 329
    invoke-virtual {v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 330
    invoke-virtual {v10, v4}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 331
    invoke-virtual {v10, v5, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 332
    invoke-virtual {v10, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 333
    invoke-virtual {v10, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    .line 334
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 335
    iget-object v10, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v10, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v0    # "action":I
    .end local v4    # "metaState":I
    .end local v5    # "xPrecision":F
    .end local v6    # "yPrecision":F
    .end local v7    # "device":I
    .end local v8    # "edgeFlags":I
    .end local v9    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v11    # "eventTime":J
    .end local v13    # "downTime":J
    .end local v26    # "x":F
    .end local v27    # "y":F
    .end local v28    # "pressure":F
    .end local v29    # "size":F
    goto :goto_2

    .line 336
    :catch_1
    move-exception v0

    .line 338
    :goto_2
    return-void

    .line 342
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v20, 0x0

    if-gez v0, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v16, v11

    goto/16 :goto_a

    :cond_5
    :goto_3
    array-length v0, v3

    const/16 v5, 0xd

    if-ne v0, v5, :cond_e

    .line 345
    :try_start_2
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v24, v22

    .line 346
    .local v24, "downTime":J
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v26, v22

    .line 347
    .local v26, "eventTime":J
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    .restart local v0    # "action":I
    aget-object v5, v3, v9

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move/from16 v30, v5

    .line 349
    .local v30, "x":F
    aget-object v5, v3, v19

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    .line 350
    .local v31, "y":F
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    .line 351
    .local v32, "pressure":F
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v33

    .line 352
    .local v33, "size":F
    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 353
    .local v5, "metaState":I
    aget-object v6, v3, v17

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 354
    .local v6, "xPrecision":F
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 355
    .local v7, "yPrecision":F
    aget-object v9, v3, v16

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 356
    .local v9, "device":I
    aget-object v10, v3, v18

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 357
    .local v10, "edgeFlags":I
    aget-object v13, v3, v15

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 360
    .local v13, "pointerId":I
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_8

    .line 361
    if-ne v0, v8, :cond_6

    .line 362
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    shl-int/lit8 v15, v13, 0x8

    or-int/2addr v8, v15

    invoke-direct {v14, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 364
    invoke-virtual {v14, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    .local v8, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_4

    .line 366
    .end local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :cond_6
    new-instance v8, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v8, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 368
    .restart local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_4
    iget-wide v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    cmp-long v14, v14, v20

    if-gez v14, :cond_7

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    .line 370
    move-wide/from16 v14, v26

    .end local v26    # "eventTime":J
    .local v14, "eventTime":J
    iput-wide v14, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    goto :goto_5

    .line 368
    .end local v14    # "eventTime":J
    .restart local v26    # "eventTime":J
    :cond_7
    move-wide/from16 v14, v26

    .end local v26    # "eventTime":J
    .restart local v14    # "eventTime":J
    goto :goto_5

    .line 373
    .end local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v14    # "eventTime":J
    .restart local v26    # "eventTime":J
    :cond_8
    move-wide/from16 v14, v26

    .end local v26    # "eventTime":J
    .restart local v14    # "eventTime":J
    new-instance v8, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v8, v0}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    .line 376
    .restart local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_5
    if-ne v13, v12, :cond_9

    .line 377
    move/from16 v16, v11

    move/from16 v18, v12

    move-wide/from16 v11, v24

    .end local v24    # "downTime":J
    .local v11, "downTime":J
    invoke-virtual {v8, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 378
    invoke-virtual {v4, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 379
    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 380
    invoke-virtual {v4, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 381
    invoke-virtual {v4, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 382
    invoke-virtual {v4, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    move-object/from16 v17, v4

    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    aget v35, v4, v16

    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    aget v36, v4, v16

    .line 383
    const/16 v34, 0x0

    move/from16 v37, v32

    move/from16 v38, v33

    move-object/from16 v33, v17

    .end local v32    # "pressure":F
    .end local v33    # "size":F
    .local v37, "pressure":F
    .local v38, "size":F
    invoke-virtual/range {v33 .. v38}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v28

    move/from16 v33, v38

    .line 384
    .end local v37    # "pressure":F
    .end local v38    # "size":F
    .restart local v32    # "pressure":F
    .restart local v33    # "size":F
    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v33}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 385
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    aput v30, v4, v18

    .line 386
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    aput v31, v4, v18

    move/from16 v22, v0

    move/from16 v19, v5

    goto :goto_7

    .line 387
    .end local v11    # "downTime":J
    .restart local v24    # "downTime":J
    :cond_9
    move/from16 v16, v11

    move/from16 v18, v12

    move-wide/from16 v11, v24

    .end local v24    # "downTime":J
    .restart local v11    # "downTime":J
    if-nez v13, :cond_b

    .line 388
    invoke-virtual {v8, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 389
    invoke-virtual {v4, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 390
    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 391
    invoke-virtual {v4, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 392
    invoke-virtual {v4, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 393
    invoke-virtual {v4, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v28

    .line 394
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v33}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 395
    const/4 v4, 0x6

    if-ne v0, v4, :cond_a

    .line 396
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    aget v4, v4, v18

    move/from16 v22, v0

    .end local v0    # "action":I
    .local v22, "action":I
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    aget v0, v0, v18

    move/from16 v19, v5

    move/from16 v5, v18

    .end local v5    # "metaState":I
    .local v19, "metaState":I
    invoke-virtual {v8, v5, v4, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    goto :goto_6

    .line 395
    .end local v19    # "metaState":I
    .end local v22    # "action":I
    .restart local v0    # "action":I
    .restart local v5    # "metaState":I
    :cond_a
    move/from16 v22, v0

    move/from16 v19, v5

    .line 398
    .end local v0    # "action":I
    .end local v5    # "metaState":I
    .restart local v19    # "metaState":I
    .restart local v22    # "action":I
    :goto_6
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    aput v30, v0, v16

    .line 399
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    aput v31, v0, v16

    goto :goto_7

    .line 387
    .end local v19    # "metaState":I
    .end local v22    # "action":I
    .restart local v0    # "action":I
    .restart local v5    # "metaState":I
    :cond_b
    move/from16 v22, v0

    move/from16 v19, v5

    .line 404
    .end local v0    # "action":I
    .end local v5    # "metaState":I
    .restart local v19    # "metaState":I
    .restart local v22    # "action":I
    :goto_7
    iget-boolean v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    if-eqz v0, :cond_d

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 406
    .local v4, "curUpTime":J
    move-wide/from16 v16, v4

    .end local v4    # "curUpTime":J
    .local v16, "curUpTime":J
    iget-wide v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    sub-long v4, v16, v4

    .line 407
    .local v4, "realElapsedTime":J
    move-wide/from16 v20, v4

    .end local v4    # "realElapsedTime":J
    .local v20, "realElapsedTime":J
    iget-wide v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    sub-long v26, v14, v4

    .line 408
    .local v26, "scriptElapsedTime":J
    cmp-long v0, v20, v26

    if-gez v0, :cond_c

    .line 409
    sub-long v4, v26, v20

    .line 410
    .local v4, "waitDuration":J
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move/from16 v18, v6

    .end local v6    # "xPrecision":F
    .local v18, "xPrecision":F
    new-instance v6, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v6, v4, v5}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v0, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_8

    .line 408
    .end local v4    # "waitDuration":J
    .end local v18    # "xPrecision":F
    .restart local v6    # "xPrecision":F
    :cond_c
    move/from16 v18, v6

    .end local v6    # "xPrecision":F
    .restart local v18    # "xPrecision":F
    goto :goto_8

    .line 404
    .end local v16    # "curUpTime":J
    .end local v18    # "xPrecision":F
    .end local v20    # "realElapsedTime":J
    .end local v26    # "scriptElapsedTime":J
    .restart local v6    # "xPrecision":F
    :cond_d
    move/from16 v18, v6

    .line 413
    .end local v6    # "xPrecision":F
    .restart local v18    # "xPrecision":F
    :goto_8
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v0, v8}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 415
    .end local v7    # "yPrecision":F
    .end local v8    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v9    # "device":I
    .end local v10    # "edgeFlags":I
    .end local v11    # "downTime":J
    .end local v13    # "pointerId":I
    .end local v14    # "eventTime":J
    .end local v18    # "xPrecision":F
    .end local v19    # "metaState":I
    .end local v22    # "action":I
    .end local v30    # "x":F
    .end local v31    # "y":F
    .end local v32    # "pressure":F
    .end local v33    # "size":F
    goto :goto_9

    .line 414
    :catch_2
    move-exception v0

    .line 416
    :goto_9
    return-void

    .line 342
    :cond_e
    move/from16 v16, v11

    .line 420
    :goto_a
    const-string v0, "RotateScreen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    array-length v0, v3

    if-ne v0, v10, :cond_12

    .line 422
    :try_start_3
    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, "rotationDegree":I
    const/4 v5, 0x1

    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 424
    .local v4, "persist":I
    if-eqz v0, :cond_f

    if-eq v0, v5, :cond_f

    if-eq v0, v10, :cond_f

    if-ne v0, v9, :cond_11

    .line 428
    :cond_f
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v6, Lcom/android/commands/monkey/MonkeyRotationEvent;

    if-eqz v4, :cond_10

    const/4 v11, 0x1

    goto :goto_b

    :cond_10
    move/from16 v11, v16

    :goto_b
    invoke-direct {v6, v0, v11}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 432
    .end local v0    # "rotationDegree":I
    .end local v4    # "persist":I
    :cond_11
    goto :goto_c

    .line 431
    :catch_3
    move-exception v0

    .line 433
    :goto_c
    return-void

    .line 437
    :cond_12
    const-string v0, "Tap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v4, "// "

    if-ltz v0, :cond_15

    array-length v0, v3

    if-lt v0, v10, :cond_15

    .line 439
    :try_start_4
    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move/from16 v24, v0

    .line 440
    .local v24, "x":F
    const/16 v18, 0x1

    aget-object v0, v3, v18

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    .line 441
    .local v25, "y":F
    const-wide/16 v5, 0x0

    .line 442
    .local v5, "tapDuration":J
    array-length v0, v3

    if-ne v0, v9, :cond_13

    .line 443
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v5, v7

    .line 447
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 448
    .local v7, "downTime":J
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move/from16 v9, v16

    invoke-direct {v0, v9}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 449
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    .line 451
    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 452
    .local v0, "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v9, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 453
    cmp-long v9, v5, v20

    if-lez v9, :cond_14

    .line 454
    iget-object v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v10, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v10, v5, v6}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 456
    :cond_14
    new-instance v9, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 457
    invoke-virtual {v9, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 458
    invoke-virtual {v9, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v22

    .line 459
    const/16 v23, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x40a00000    # 5.0f

    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 460
    .local v9, "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v10, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v10, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 463
    .end local v0    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5    # "tapDuration":J
    .end local v7    # "downTime":J
    .end local v9    # "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v24    # "x":F
    .end local v25    # "y":F
    goto :goto_d

    .line 461
    :catch_4
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 464
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_d
    return-void

    .line 468
    :cond_15
    const-string v0, "PressAndHold"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_16

    array-length v0, v3

    if-ne v0, v9, :cond_16

    .line 470
    const/16 v16, 0x0

    :try_start_5
    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move/from16 v21, v0

    .line 471
    .local v21, "x":F
    const/16 v18, 0x1

    aget-object v0, v3, v18

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 472
    .local v22, "y":F
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 475
    .local v5, "pressDuration":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 477
    .restart local v7    # "downTime":J
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 478
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v19

    .line 480
    const/16 v20, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x40a00000    # 5.0f

    invoke-virtual/range {v19 .. v24}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 481
    .local v0, "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v9, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v9, v5, v6}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 482
    .local v9, "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v10, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    add-long v11, v7, v5

    .line 483
    invoke-virtual {v10, v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    add-long v11, v7, v5

    .line 484
    invoke-virtual {v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v19

    .line 485
    const/16 v20, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x40a00000    # 5.0f

    invoke-virtual/range {v19 .. v24}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 486
    .local v10, "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v11, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v11, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 487
    iget-object v11, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v11, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 488
    iget-object v11, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v11, v10}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 492
    .end local v0    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5    # "pressDuration":J
    .end local v7    # "downTime":J
    .end local v9    # "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v10    # "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v21    # "x":F
    .end local v22    # "y":F
    goto :goto_e

    .line 490
    :catch_5
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 493
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_e
    return-void

    .line 497
    :cond_16
    const-string v0, "Drag"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_19

    array-length v0, v3

    if-ne v0, v8, :cond_19

    .line 498
    const/16 v16, 0x0

    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 499
    .local v0, "xStart":F
    const/16 v18, 0x1

    aget-object v5, v3, v18

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 500
    .local v5, "yStart":F
    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 501
    .local v11, "xEnd":F
    aget-object v12, v3, v9

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 502
    .local v12, "yEnd":F
    aget-object v13, v3, v19

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 504
    .local v13, "stepCount":I
    move/from16 v25, v0

    .line 505
    .local v25, "x":F
    move/from16 v26, v5

    .line 506
    .local v26, "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 507
    .local v14, "downTime":J
    move/from16 v20, v8

    move/from16 v21, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 509
    .local v8, "eventTime":J
    if-lez v13, :cond_18

    .line 510
    sub-float v23, v11, v0

    move/from16 v29, v6

    int-to-float v6, v13

    div-float v6, v23, v6

    .line 511
    .local v6, "xStep":F
    sub-float v23, v12, v5

    int-to-float v7, v13

    div-float v7, v23, v7

    .line 513
    .local v7, "yStep":F
    new-instance v10, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move/from16 v32, v0

    const/4 v0, 0x0

    .end local v0    # "xStart":F
    .local v32, "xStart":F
    invoke-direct {v10, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 514
    invoke-virtual {v10, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 515
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v23

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x40a00000    # 5.0f

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v28}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 516
    .local v0, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v10, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v10, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 518
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_f
    if-ge v10, v13, :cond_17

    .line 519
    add-float v35, v25, v6

    .line 520
    .end local v25    # "x":F
    .local v35, "x":F
    add-float v36, v26, v7

    .line 521
    .end local v26    # "y":F
    .local v36, "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 522
    move-object/from16 v39, v0

    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .local v39, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move/from16 v40, v5

    const/4 v5, 0x2

    .end local v5    # "yStart":F
    .local v40, "yStart":F
    invoke-direct {v0, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v0, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 523
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v33

    const/high16 v37, 0x3f800000    # 1.0f

    const/high16 v38, 0x40a00000    # 5.0f

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v38}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 524
    .end local v39    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 518
    add-int/lit8 v10, v10, 0x1

    move/from16 v25, v35

    move/from16 v26, v36

    move/from16 v5, v40

    goto :goto_f

    .end local v35    # "x":F
    .end local v36    # "y":F
    .end local v40    # "yStart":F
    .restart local v5    # "yStart":F
    .restart local v25    # "x":F
    .restart local v26    # "y":F
    :cond_17
    move-object/from16 v39, v0

    move/from16 v40, v5

    .line 527
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v5    # "yStart":F
    .end local v10    # "i":I
    .restart local v39    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .restart local v40    # "yStart":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 528
    new-instance v0, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v0, v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 529
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v23

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x40a00000    # 5.0f

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v28}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    .line 530
    .end local v39    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_10

    .line 509
    .end local v6    # "xStep":F
    .end local v7    # "yStep":F
    .end local v32    # "xStart":F
    .end local v40    # "yStart":F
    .local v0, "xStart":F
    .restart local v5    # "yStart":F
    :cond_18
    move/from16 v32, v0

    move/from16 v40, v5

    move/from16 v29, v6

    .end local v0    # "xStart":F
    .end local v5    # "yStart":F
    .restart local v32    # "xStart":F
    .restart local v40    # "yStart":F
    goto :goto_10

    .line 497
    .end local v8    # "eventTime":J
    .end local v11    # "xEnd":F
    .end local v12    # "yEnd":F
    .end local v13    # "stepCount":I
    .end local v14    # "downTime":J
    .end local v25    # "x":F
    .end local v26    # "y":F
    .end local v32    # "xStart":F
    .end local v40    # "yStart":F
    :cond_19
    move/from16 v29, v6

    move/from16 v20, v8

    move/from16 v21, v9

    .line 535
    :goto_10
    const-string v0, "PinchZoom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1c

    array-length v0, v3

    const/16 v5, 0x9

    if-ne v0, v5, :cond_1c

    .line 537
    const/16 v16, 0x0

    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 538
    .local v0, "pt1xStart":F
    const/16 v18, 0x1

    aget-object v5, v3, v18

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 539
    .local v5, "pt1yStart":F
    const/16 v31, 0x2

    aget-object v6, v3, v31

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 540
    .local v6, "pt1xEnd":F
    aget-object v7, v3, v21

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 542
    .local v7, "pt1yEnd":F
    aget-object v8, v3, v19

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 543
    .local v8, "pt2xStart":F
    aget-object v9, v3, v20

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 544
    .local v9, "pt2yStart":F
    const/16 v22, 0x6

    aget-object v10, v3, v22

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 545
    .local v10, "pt2xEnd":F
    aget-object v11, v3, v29

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 547
    .local v11, "pt2yEnd":F
    aget-object v12, v3, v17

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 549
    .local v12, "stepCount":I
    move/from16 v22, v0

    .line 550
    .local v22, "x1":F
    move/from16 v23, v5

    .line 551
    .local v23, "y1":F
    move v13, v8

    .line 552
    .local v13, "x2":F
    move v14, v9

    .line 554
    .local v14, "y2":F
    move v15, v5

    move/from16 v17, v6

    .end local v5    # "pt1yStart":F
    .end local v6    # "pt1xEnd":F
    .local v15, "pt1yStart":F
    .local v17, "pt1xEnd":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 555
    .local v5, "downTime":J
    move/from16 v26, v7

    move/from16 v27, v8

    .end local v7    # "pt1yEnd":F
    .end local v8    # "pt2xStart":F
    .local v26, "pt1yEnd":F
    .local v27, "pt2xStart":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 557
    .local v7, "eventTime":J
    if-lez v12, :cond_1b

    .line 558
    sub-float v20, v17, v0

    move/from16 v28, v0

    .end local v0    # "pt1xStart":F
    .local v28, "pt1xStart":F
    int-to-float v0, v12

    div-float v0, v20, v0

    .line 559
    .local v0, "pt1xStep":F
    sub-float v20, v26, v15

    move/from16 v30, v0

    .end local v0    # "pt1xStep":F
    .local v30, "pt1xStep":F
    int-to-float v0, v12

    div-float v0, v20, v0

    .line 561
    .local v0, "pt1yStep":F
    sub-float v20, v10, v27

    move/from16 v32, v0

    .end local v0    # "pt1yStep":F
    .local v32, "pt1yStep":F
    int-to-float v0, v12

    div-float v0, v20, v0

    .line 562
    .local v0, "pt2xStep":F
    sub-float v20, v11, v9

    move/from16 v33, v0

    .end local v0    # "pt2xStep":F
    .local v33, "pt2xStep":F
    int-to-float v0, v12

    div-float v0, v20, v0

    .line 564
    .local v0, "pt2yStep":F
    move/from16 v34, v0

    .end local v0    # "pt2yStep":F
    .local v34, "pt2yStep":F
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move/from16 v35, v9

    .end local v9    # "pt2yStart":F
    .local v35, "pt2yStart":F
    new-instance v9, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move/from16 v36, v10

    const/4 v10, 0x0

    .end local v10    # "pt2xEnd":F
    .local v36, "pt2xEnd":F
    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v9, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 565
    invoke-virtual {v9, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x40a00000    # 5.0f

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 564
    move-wide/from16 v20, v7

    move/from16 v10, v22

    move/from16 v7, v23

    .end local v22    # "x1":F
    .end local v23    # "y1":F
    .local v7, "y1":F
    .local v10, "x1":F
    .local v20, "eventTime":J
    invoke-virtual {v0, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 567
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v8, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v9, 0x105

    invoke-direct {v8, v9}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 568
    invoke-virtual {v8, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    .line 569
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v10, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    .line 567
    invoke-virtual {v0, v8}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 571
    const/4 v0, 0x0

    move v9, v7

    move-wide/from16 v7, v20

    .end local v20    # "eventTime":J
    .local v0, "i":I
    .local v7, "eventTime":J
    .local v9, "y1":F
    :goto_11
    if-ge v0, v12, :cond_1a

    .line 572
    add-float v22, v10, v30

    .line 573
    .end local v10    # "x1":F
    .restart local v22    # "x1":F
    add-float v23, v9, v32

    .line 574
    .end local v9    # "y1":F
    .restart local v23    # "y1":F
    add-float v39, v13, v33

    .line 575
    .end local v13    # "x2":F
    .local v39, "x2":F
    add-float v40, v14, v34

    .line 577
    .end local v14    # "y2":F
    .local v40, "y2":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 578
    iget-object v9, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v10, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v13, 0x2

    invoke-direct {v10, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v10, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 579
    invoke-virtual {v10, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x40a00000    # 5.0f

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v37

    const/high16 v41, 0x3f800000    # 1.0f

    const/high16 v42, 0x40a00000    # 5.0f

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v42}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 578
    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 571
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v22

    move/from16 v9, v23

    move/from16 v13, v39

    move/from16 v14, v40

    goto :goto_11

    .line 582
    .end local v0    # "i":I
    .end local v22    # "x1":F
    .end local v23    # "y1":F
    .end local v39    # "x2":F
    .end local v40    # "y2":F
    .restart local v9    # "y1":F
    .restart local v10    # "x1":F
    .restart local v13    # "x2":F
    .restart local v14    # "y2":F
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 583
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move/from16 v22, v11

    .end local v11    # "pt2yEnd":F
    .local v22, "pt2yEnd":F
    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    move/from16 v23, v12

    .end local v12    # "stepCount":I
    .local v23, "stepCount":I
    const/16 v12, 0x106

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 585
    invoke-virtual {v11, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    .line 586
    const/4 v12, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    .line 583
    invoke-virtual {v0, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 587
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 588
    invoke-virtual {v11, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    .line 587
    invoke-virtual {v0, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_12

    .line 557
    .end local v28    # "pt1xStart":F
    .end local v30    # "pt1xStep":F
    .end local v32    # "pt1yStep":F
    .end local v33    # "pt2xStep":F
    .end local v34    # "pt2yStep":F
    .end local v35    # "pt2yStart":F
    .end local v36    # "pt2xEnd":F
    .local v0, "pt1xStart":F
    .local v9, "pt2yStart":F
    .local v10, "pt2xEnd":F
    .restart local v11    # "pt2yEnd":F
    .restart local v12    # "stepCount":I
    .local v22, "x1":F
    .local v23, "y1":F
    :cond_1b
    move/from16 v28, v0

    move-wide/from16 v20, v7

    move/from16 v35, v9

    move/from16 v36, v10

    move/from16 v10, v22

    move/from16 v7, v23

    move/from16 v22, v11

    move/from16 v23, v12

    .line 593
    .end local v0    # "pt1xStart":F
    .end local v5    # "downTime":J
    .end local v7    # "eventTime":J
    .end local v9    # "pt2yStart":F
    .end local v10    # "pt2xEnd":F
    .end local v11    # "pt2yEnd":F
    .end local v12    # "stepCount":I
    .end local v13    # "x2":F
    .end local v14    # "y2":F
    .end local v15    # "pt1yStart":F
    .end local v17    # "pt1xEnd":F
    .end local v22    # "x1":F
    .end local v23    # "y1":F
    .end local v26    # "pt1yEnd":F
    .end local v27    # "pt2xStart":F
    :cond_1c
    :goto_12
    const-string v0, "DispatchFlip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1d

    array-length v0, v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1d

    .line 594
    const/16 v16, 0x0

    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 595
    .local v0, "keyboardOpen":Z
    new-instance v5, Lcom/android/commands/monkey/MonkeyFlipEvent;

    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 596
    .local v5, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 600
    .end local v0    # "keyboardOpen":Z
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    :cond_1d
    const-string v0, "LaunchActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_20

    array-length v0, v3

    const/4 v13, 0x2

    if-lt v0, v13, :cond_20

    .line 601
    const/16 v16, 0x0

    aget-object v5, v3, v16

    .line 602
    .local v5, "pkg_name":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v6, v3, v18

    .line 603
    .local v6, "cl_name":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 605
    .local v7, "alarmTime":J
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .line 607
    .local v9, "mApp":Landroid/content/ComponentName;
    array-length v0, v3

    const/4 v13, 0x2

    if-le v0, v13, :cond_1e

    .line 609
    :try_start_6
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-wide v7, v10

    .line 613
    goto :goto_13

    .line 610
    :catch_6
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v10, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 612
    return-void

    .line 616
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1e
    :goto_13
    array-length v0, v3

    const/4 v13, 0x2

    if-ne v0, v13, :cond_1f

    .line 617
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    invoke-direct {v0, v9}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 618
    .local v0, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 619
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    goto :goto_14

    .line 620
    :cond_1f
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    invoke-direct {v0, v9, v7, v8}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    .line 621
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 623
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :goto_14
    return-void

    .line 627
    .end local v5    # "pkg_name":Ljava/lang/String;
    .end local v6    # "cl_name":Ljava/lang/String;
    .end local v7    # "alarmTime":J
    .end local v9    # "mApp":Landroid/content/ComponentName;
    :cond_20
    const-string v0, "DeviceWakeUp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_21

    .line 628
    const-string v0, "com.google.android.powerutil"

    .line 629
    .local v0, "pkg_name":Ljava/lang/String;
    const-string v4, "com.google.android.powerutil.WakeUpScreen"

    .line 630
    .local v4, "cl_name":Ljava/lang/String;
    iget-wide v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 633
    .local v5, "deviceSleepTime":J
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .local v7, "mApp":Landroid/content/ComponentName;
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyActivityEvent;

    invoke-direct {v9, v7, v5, v6}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 637
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    move/from16 v10, v29

    const/4 v12, 0x0

    invoke-direct {v9, v12, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 638
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v11, 0x1

    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 642
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyWaitEvent;

    const-wide/16 v10, 0xbb8

    add-long/2addr v10, v5

    invoke-direct {v9, v10, v11}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 645
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v10, 0x52

    const/4 v12, 0x0

    invoke-direct {v9, v12, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 646
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v11, 0x1

    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 649
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    move/from16 v10, v19

    invoke-direct {v9, v12, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 650
    iget-object v8, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 652
    return-void

    .line 656
    .end local v0    # "pkg_name":Ljava/lang/String;
    .end local v4    # "cl_name":Ljava/lang/String;
    .end local v5    # "deviceSleepTime":J
    .end local v7    # "mApp":Landroid/content/ComponentName;
    :cond_21
    const-string v0, "LaunchInstrumentation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_22

    array-length v0, v3

    const/4 v13, 0x2

    if-ne v0, v13, :cond_22

    .line 657
    const/16 v16, 0x0

    aget-object v0, v3, v16

    .line 658
    .local v0, "test_name":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v4, v3, v18

    .line 659
    .local v4, "runner_name":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    invoke-direct {v5, v0, v4}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .local v5, "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 661
    return-void

    .line 665
    .end local v0    # "test_name":Ljava/lang/String;
    .end local v4    # "runner_name":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    :cond_22
    const-string v0, "UserWait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_23

    array-length v0, v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_23

    .line 667
    const/16 v16, 0x0

    :try_start_7
    aget-object v0, v3, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 668
    .local v4, "sleeptime":J
    new-instance v0, Lcom/android/commands/monkey/MonkeyWaitEvent;

    invoke-direct {v0, v4, v5}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 669
    .local v0, "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 671
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v4    # "sleeptime":J
    goto :goto_15

    .line 670
    :catch_7
    move-exception v0

    .line 672
    :goto_15
    return-void

    .line 677
    :cond_23
    const-string v0, "ProfileWait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 678
    new-instance v0, Lcom/android/commands/monkey/MonkeyWaitEvent;

    iget-wide v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    invoke-direct {v0, v4, v5}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 679
    .restart local v0    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 680
    return-void

    .line 684
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_24
    const-string v0, "DispatchPress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_26

    array-length v0, v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_26

    .line 685
    const/4 v12, 0x0

    aget-object v0, v3, v12

    .line 686
    .local v0, "key_name":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v4

    .line 687
    .local v4, "keyCode":I
    if-nez v4, :cond_25

    .line 688
    return-void

    .line 690
    :cond_25
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v5, v12, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 691
    .local v5, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 692
    new-instance v6, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 693
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .local v6, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 694
    return-void

    .line 698
    .end local v0    # "key_name":Ljava/lang/String;
    .end local v4    # "keyCode":I
    .end local v6    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    :cond_26
    const-string v0, "LongPress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 700
    new-instance v0, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v4, 0x17

    const/4 v12, 0x0

    invoke-direct {v0, v12, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 701
    .local v0, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 702
    new-instance v5, Lcom/android/commands/monkey/MonkeyWaitEvent;

    sget v6, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 703
    .local v5, "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 704
    new-instance v6, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 705
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .restart local v6    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v0, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 709
    .end local v5    # "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v6    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    :cond_27
    const-string v0, "PowerLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2a

    array-length v0, v3

    if-lez v0, :cond_2a

    .line 710
    const/16 v16, 0x0

    aget-object v0, v3, v16

    .line 713
    .local v0, "power_log_type":Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 714
    new-instance v4, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v4, v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v4, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .end local v4    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    goto :goto_16

    .line 716
    :cond_28
    array-length v4, v3

    const/4 v13, 0x2

    if-ne v4, v13, :cond_29

    .line 717
    const/16 v18, 0x1

    aget-object v4, v3, v18

    .line 718
    .local v4, "test_case_status":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v5, v0, v4}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .local v5, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_17

    .line 716
    .end local v4    # "test_case_status":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_29
    :goto_16
    nop

    .line 724
    .end local v0    # "power_log_type":Ljava/lang/String;
    :cond_2a
    :goto_17
    const-string v0, "WriteLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2b

    .line 725
    new-instance v0, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    .line 726
    .local v0, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 730
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_2b
    const-string v0, "RunCmd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2c

    array-length v0, v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2c

    .line 731
    const/16 v16, 0x0

    aget-object v0, v3, v16

    .line 732
    .local v0, "cmd":Ljava/lang/String;
    new-instance v4, Lcom/android/commands/monkey/MonkeyCommandEvent;

    invoke-direct {v4, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v4, "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 737
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    :cond_2c
    const-string v0, "DispatchString"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2d

    array-length v0, v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    .line 738
    const/16 v16, 0x0

    aget-object v0, v3, v16

    .line 739
    .local v0, "input":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input text "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "cmd":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyCommandEvent;

    invoke-direct {v5, v4}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v5, "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    iget-object v6, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 742
    return-void

    .line 745
    .end local v0    # "input":Ljava/lang/String;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    :cond_2d
    const-string v0, "StartCaptureFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v4, "start"

    if-ltz v0, :cond_2e

    .line 746
    new-instance v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    invoke-direct {v0, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    .line 747
    .local v0, "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 748
    return-void

    .line 751
    .end local v0    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_2e
    const-string v0, "EndCaptureFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v5, "end"

    if-ltz v0, :cond_2f

    array-length v0, v3

    const/4 v11, 0x1

    if-ne v0, v11, :cond_2f

    .line 752
    const/16 v16, 0x0

    aget-object v0, v3, v16

    .line 753
    .local v0, "input":Ljava/lang/String;
    new-instance v4, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    invoke-direct {v4, v5, v0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .local v4, "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 755
    return-void

    .line 758
    .end local v0    # "input":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_2f
    const-string v0, "StartCaptureAppFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_30

    array-length v0, v3

    const/4 v11, 0x1

    if-ne v0, v11, :cond_30

    .line 759
    const/16 v16, 0x0

    aget-object v0, v3, v16

    .line 760
    .local v0, "app":Ljava/lang/String;
    new-instance v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    invoke-direct {v5, v4, v0}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .local v5, "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    iget-object v4, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 762
    return-void

    .line 765
    .end local v0    # "app":Ljava/lang/String;
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    :cond_30
    const-string v0, "EndCaptureAppFramerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_31

    array-length v0, v3

    const/4 v13, 0x2

    if-ne v0, v13, :cond_31

    .line 766
    const/16 v16, 0x0

    aget-object v0, v3, v16

    .line 767
    .restart local v0    # "app":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v4, v3, v18

    .line 768
    .local v4, "label":Ljava/lang/String;
    new-instance v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    invoke-direct {v6, v5, v0, v4}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .local v6, "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    iget-object v5, v1, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 770
    return-void

    .line 774
    .end local v0    # "app":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    :cond_31
    return-void
.end method

.method private needSleep(J)V
    .locals 2
    .param p1, "time"    # J

    .line 853
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 854
    return-void

    .line 857
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 860
    :goto_0
    return-void
.end method

.method private processLine(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 783
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 784
    .local v0, "index1":I
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 786
    .local v1, "index2":I
    if-ltz v0, :cond_2

    if-gez v1, :cond_0

    goto :goto_1

    .line 790
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 793
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 792
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 796
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 797
    return-void

    .line 787
    .end local v2    # "args":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method private readHeader()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 200
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    .line 201
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    .line 202
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    .line 206
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 209
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ""

    if-ltz v4, :cond_1

    .line 211
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 215
    return v3

    .line 217
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "speed="

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 219
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2    # "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 222
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 223
    return v3

    .line 225
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v2, "linebyline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 226
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    goto/16 :goto_0

    .line 227
    :cond_3
    const-string v2, "start data >>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 228
    return v0

    .line 232
    .end local v1    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    :cond_4
    return v3
.end method

.method private readLines()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 246
    return v0

    .line 248
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private readNextBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    const/4 v0, 0x0

    .line 830
    .local v0, "linesRead":I
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v1, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    .line 832
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    .line 835
    :cond_0
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    if-eqz v1, :cond_1

    .line 836
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readOneLine()I

    move-result v0

    goto :goto_0

    .line 838
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    move-result v0

    .line 841
    :goto_0
    if-nez v0, :cond_2

    .line 842
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    .line 844
    :cond_2
    return-void
.end method

.method private readOneLine()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 263
    const/4 v1, 0x0

    return v1

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x1

    return v1
.end method

.method private resetValue()V
    .locals 4

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 184
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 185
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 186
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 187
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 188
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 189
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 5

    .line 960
    const-wide/16 v0, -0x1

    .line 963
    .local v0, "recordedEventTime":J
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 965
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    goto :goto_0

    .line 966
    :catch_0
    move-exception v2

    .line 967
    .local v2, "e":Ljava/io/IOException;
    return-object v3

    .line 972
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeyEvent;

    .line 973
    .local v2, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 976
    nop

    .line 978
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v3

    if-nez v3, :cond_1

    .line 979
    move-object v3, v2

    check-cast v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    goto :goto_1

    .line 980
    :cond_1
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 981
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 982
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/android/commands/monkey/MonkeyMotionEvent;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    .line 984
    :cond_3
    :goto_1
    return-object v2

    .line 974
    .end local v2    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :catch_1
    move-exception v2

    .line 975
    .local v2, "e":Ljava/util/NoSuchElementException;
    return-object v3
.end method

.method public setVerbose(I)V
    .locals 0
    .param p1, "verbose"    # I

    .line 885
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 886
    return-void
.end method

.method public validate()Z
    .locals 5

    .line 871
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    move-result v0

    .line 872
    .local v0, "validHeader":Z
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    nop

    .line 877
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v1, :cond_0

    .line 878
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replaying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events with speed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 880
    :cond_0
    return v0

    .line 873
    .end local v0    # "validHeader":Z
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method
