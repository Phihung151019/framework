.class public abstract Lcom/android/commands/monkey/MonkeyMotionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyMotionEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDisplayId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mIntermediateNote:Z

.field private mMetaState:I

.field private mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:I

.field private mXPrecision:F

.field private mYPrecision:F


# direct methods
.method protected constructor <init>(IIII)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "source"    # I
    .param p3, "action"    # I
    .param p4, "display"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 50
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 52
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 53
    iput p3, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 56
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 57
    iput p4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDisplayId:I

    .line 58
    return-void
.end method

.method private getEvent()Landroid/view/MotionEvent;
    .locals 19

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 133
    .local v7, "pointerCount":I
    new-array v9, v7, [Landroid/view/MotionEvent$PointerCoords;

    .line 134
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v8, v7, [Landroid/view/MotionEvent$PointerProperties;

    .line 136
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 137
    iget-object v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent$PointerCoords;

    aput-object v2, v9, v1

    .line 138
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v1

    .line 139
    aget-object v2, v8, v1

    iget-object v3, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    iget-wide v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 143
    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    :goto_1
    iget v6, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    iget v10, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    iget v12, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    iget v13, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    iget v14, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    iget v15, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    iget v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    iget v11, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDisplayId:I

    .line 142
    move/from16 v17, v11

    const/4 v11, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 6
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 61
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "id":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v1, "id":I
    .local v2, "x":F
    .local v3, "y":F
    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object p1

    return-object p1
.end method

.method public addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pressure"    # F
    .param p5, "size"    # F

    .line 66
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 67
    .local v0, "c":Landroid/view/MotionEvent$PointerCoords;
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 68
    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 69
    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 70
    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 71
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 72
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getIntermediateNote()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    return v0
.end method

.method public getMotionEventForInjection()Landroid/view/MotionEvent;
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTypeLabel()Ljava/lang/String;
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 7
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 160
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 161
    .local v0, "me":Landroid/view/MotionEvent;
    const/4 v1, 0x1

    if-lez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    if-eqz v2, :cond_1

    :cond_0
    if-le p3, v1, :cond_3

    .line 162
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getTypeLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 184
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    :pswitch_1
    const-string v3, "ACTION_POINTER_UP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    goto :goto_0

    .line 178
    :pswitch_2
    const-string v3, "ACTION_POINTER_DOWN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    goto :goto_0

    .line 175
    :pswitch_3
    const-string v3, "ACTION_CANCEL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    goto :goto_0

    .line 169
    :pswitch_4
    const-string v3, "ACTION_MOVE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    goto :goto_0

    .line 172
    :pswitch_5
    const-string v3, "ACTION_UP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_0

    .line 166
    :pswitch_6
    const-string v3, "ACTION_DOWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    nop

    .line 187
    :goto_0
    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 190
    .local v3, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 191
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v5, ":("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 194
    .end local v4    # "i":I
    :cond_2
    sget-object v4, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 197
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v3    # "pointerCount":I
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    .line 199
    nop

    .line 202
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 199
    const/4 v1, 0x0

    return v1

    .line 202
    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 203
    nop

    .line 204
    return v1

    .line 202
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 203
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isThrottlable()Z
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "deviceId"    # I

    .line 118
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    .line 119
    return-object p0
.end method

.method public setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "downTime"    # J

    .line 97
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 98
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "edgeFlags"    # I

    .line 123
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    .line 124
    return-object p0
.end method

.method public setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "eventTime"    # J

    .line 102
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 103
    return-object p0
.end method

.method public setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "b"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    .line 77
    return-object p0
.end method

.method public setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "metaState"    # I

    .line 107
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 108
    return-object p0
.end method

.method public setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "xPrecision"    # F
    .param p2, "yPrecision"    # F

    .line 112
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 113
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 114
    return-object p0
.end method
