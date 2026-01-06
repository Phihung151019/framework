.class public Lcom/android/commands/monkey/MonkeyKeyEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyKeyEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 11
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .line 43
    const/4 v9, -0x1

    const/4 v10, 0x0

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    .end local p1    # "action":I
    .end local p2    # "keyCode":I
    .local v5, "action":I
    .local v6, "keyCode":I
    invoke-direct/range {v0 .. v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 44
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "keyCode"    # I
    .param p7, "repeatCount"    # I
    .param p8, "metaState"    # I
    .param p9, "device"    # I
    .param p10, "scanCode"    # I

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 50
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 51
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 52
    iput p5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 53
    iput p6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 54
    iput p7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 55
    iput p8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 56
    iput p9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 57
    iput p10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/KeyEvent;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 62
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 63
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    :goto_0
    return v0
.end method

.method public getDownTime()J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    :goto_0
    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    :goto_0
    return-wide v0
.end method

.method public getKeyCode()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    :goto_0
    return v0
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 21
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 102
    move-object/from16 v1, p0

    const-string v2, "): "

    const-string v3, ":Sending Key ("

    const/4 v4, 0x1

    move/from16 v5, p3

    if-le v5, v4, :cond_1

    .line 104
    iget v0, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    if-ne v0, v4, :cond_0

    .line 105
    const-string v0, "ACTION_UP"

    move-object v6, v0

    .local v0, "note":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v0    # "note":Ljava/lang/String;
    :cond_0
    const-string v0, "ACTION_DOWN"

    move-object v6, v0

    .line 111
    .local v6, "note":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    // "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 113
    invoke-static {v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-virtual {v0, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v7, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    // Unknown key event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 120
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6    # "note":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 121
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    if-nez v0, :cond_4

    .line 122
    iget-wide v2, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 123
    .local v2, "eventTime":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gtz v8, :cond_2

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_2

    .line 123
    :cond_2
    move-wide v11, v2

    .line 126
    .end local v2    # "eventTime":J
    .local v11, "eventTime":J
    :goto_2
    iget-wide v2, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 127
    .local v2, "downTime":J
    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    .line 128
    move-wide v2, v11

    move-wide v9, v2

    goto :goto_3

    .line 127
    :cond_3
    move-wide v9, v2

    .line 130
    .end local v2    # "downTime":J
    .local v9, "downTime":J
    :goto_3
    new-instance v8, Landroid/view/KeyEvent;

    iget v13, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iget v14, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iget v15, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iget v2, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iget v3, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iget v6, v1, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    const/16 v19, 0x8

    const/16 v20, 0x101

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v6

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v0, v8

    .line 134
    .end local v9    # "downTime":J
    .end local v11    # "eventTime":J
    :cond_4
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 136
    const/4 v2, 0x0

    return v2

    .line 138
    :cond_5
    return v4
.end method

.method public isThrottlable()Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setDownTime(J)V
    .locals 2
    .param p1, "downTime"    # J

    .line 82
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    .line 85
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 86
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify down time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEventTime(J)V
    .locals 2
    .param p1, "eventTime"    # J

    .line 89
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    .line 92
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 93
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify event time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
