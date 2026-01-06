.class public Lcom/samsung/android/hardware/context/util/PedometerUtil;
.super Ljava/lang/Object;
.source "PedometerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 162
    const-string v0, ""

    .line 163
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    .line 164
    .local v1, "data":Ljava/lang/String;
    const-string v2, "Mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string v0, "mode"

    .line 166
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 167
    .local v2, "mode":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    const-string v1, "History"

    .line 176
    goto :goto_0

    .line 172
    :pswitch_1
    const-string v1, "Logging"

    .line 173
    goto :goto_0

    .line 169
    :pswitch_2
    const-string v1, "Normal"

    .line 170
    nop

    .line 180
    .end local v2    # "mode":I
    :goto_0
    goto/16 :goto_2

    .line 181
    :cond_0
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    .line 182
    .local v2, "dataType":Lcom/samsung/android/hardware/context/util/DataType;
    const-string v3, "StepStatus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    const-string v0, "status"

    .line 184
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 185
    :cond_1
    const-string v3, "CalorieDiff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string v0, "c"

    .line 187
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 188
    :cond_2
    const-string v3, "DistanceDiff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    const-string v0, "d"

    .line 190
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 191
    :cond_3
    const-string v3, "WalkingFrequency"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    const-string v0, "wf"

    .line 193
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 194
    :cond_4
    const-string v3, "TotalStepCountDiff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    const-string v0, "tsc"

    .line 196
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 197
    :cond_5
    const-string v3, "WalkStepCountDiff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 198
    const-string v0, "wsc"

    .line 199
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 200
    :cond_6
    const-string v3, "RunStepCountDiff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 201
    const-string v0, "rsc"

    .line 202
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 203
    :cond_7
    const-string v3, "CumulativeTotalStepCount"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 204
    const-string v0, "ctsc"

    .line 205
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG:Lcom/samsung/android/hardware/context/util/DataType;

    goto/16 :goto_1

    .line 206
    :cond_8
    const-string v3, "LoggingCount"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 207
    const-string v0, "loggingCnt"

    .line 208
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    goto :goto_1

    .line 209
    :cond_9
    const-string v3, "TimeStampArray"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 210
    const-string v0, "timeStampArray"

    .line 211
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    goto :goto_1

    .line 212
    :cond_a
    const-string v3, "CalorieDiffArray"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 213
    const-string v0, "cDiffArray"

    .line 214
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    goto :goto_1

    .line 215
    :cond_b
    const-string v3, "DistanceDiffArray"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 216
    const-string v0, "dDiffArray"

    .line 217
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    goto :goto_1

    .line 218
    :cond_c
    const-string v3, "SpeedArray"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 219
    const-string v0, "speedArray"

    .line 220
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    goto :goto_1

    .line 221
    :cond_d
    const-string v3, "TotalStepCountDiffArray"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 222
    const-string v0, "tscDiffArray"

    .line 223
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    goto :goto_1

    .line 224
    :cond_e
    const-string v3, "WalkStepCountDiffArray"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 225
    const-string v0, "wscDiffArray"

    .line 226
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    goto :goto_1

    .line 227
    :cond_f
    const-string v3, "RunStepCountDiffArray"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 228
    const-string v0, "rscDiffArray"

    .line 229
    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    .line 231
    :cond_10
    :goto_1
    invoke-static {p0, p1, v2}, Lcom/samsung/android/hardware/context/util/DataType;->getData(Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/hardware/context/util/DataType;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .end local v2    # "dataType":Lcom/samsung/android/hardware/context/util/DataType;
    :goto_2
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 236
    :cond_11
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getKeys(Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)[Ljava/lang/String;
    .locals 12
    .param p0, "mode"    # Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "keys":[Ljava/lang/String;
    const-string v9, "RunDownStepCountDiff"

    const-string v10, "UpDownStepCountDiff"

    const-string v1, "CalorieDiff"

    const-string v2, "DistanceDiff"

    const-string v3, "TotalStepCountDiff"

    const-string v4, "WalkStepCountDiff"

    const-string v5, "WalkUpStepCountDiff"

    const-string v6, "WalkDownStepCountDiff"

    const-string v7, "RunStepCountDiff"

    const-string v8, "RunUpStepCountDiff"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "diffKeys":[Ljava/lang/String;
    const-string v10, "RunDownStepCount"

    const-string v11, "UpDownStepCount"

    const-string v2, "Calorie"

    const-string v3, "Distance"

    const-string v4, "TotalStepCount"

    const-string v5, "WalkStepCount"

    const-string v6, "WalkUpStepCount"

    const-string v7, "WalkDownStepCount"

    const-string v8, "RunStepCount"

    const-string v9, "RunUpStepCount"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "sumKeys":[Ljava/lang/String;
    const-string v10, "CumulativeRunUpStepCount"

    const-string v11, "CumulativeRunDownStepCount"

    const-string v3, "CumulativeCalorie"

    const-string v4, "CumulativeDistance"

    const-string v5, "CumulativeTotalStepCount"

    const-string v6, "CumulativeWalkFlatStepCount"

    const-string v7, "CumulativeWalkUpStepCount"

    const-string v8, "CumulativeWalkDownStepCount"

    const-string v9, "CumulativeRunFlatStepCount"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "cumulativeKeys":[Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->DIFF:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    if-ne p0, v4, :cond_0

    .line 58
    move-object v0, v1

    goto :goto_0

    .line 59
    :cond_0
    sget-object v4, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->SUM:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    if-ne p0, v4, :cond_1

    .line 60
    move-object v0, v2

    goto :goto_0

    .line 61
    :cond_1
    sget-object v4, Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;->CUMULATIVE:Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    if-ne p0, v4, :cond_2

    .line 62
    move-object v0, v3

    .line 64
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getLogs(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/os/Bundle;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    .line 147
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 148
    aget-object v3, p1, v2

    .line 149
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    invoke-static {p0, v3}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "data":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 152
    const/4 v5, 0x1

    if-lt v2, v5, :cond_0

    .line 153
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;
    .locals 10
    .param p0, "context1"    # Landroid/os/Bundle;
    .param p1, "context2"    # Landroid/os/Bundle;
    .param p2, "mode1"    # Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;
    .param p3, "mode2"    # Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    .line 78
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_4

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 83
    return-object p0

    .line 86
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getKeys(Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "keys1":[Ljava/lang/String;
    invoke-static {p3}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getKeys(Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "keys2":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v3, "context":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    if-nez v2, :cond_2

    goto :goto_3

    .line 96
    :cond_2
    array-length v0, v1

    array-length v4, v2

    if-gt v0, v4, :cond_3

    .line 97
    array-length v0, v1

    .local v0, "size":I
    goto :goto_0

    .line 99
    .end local v0    # "size":I
    :cond_3
    array-length v0, v2

    .line 101
    .restart local v0    # "size":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 102
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 103
    aget-object v5, v1, v4

    aget-object v6, v1, v4

    .line 104
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v2, v4

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 103
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 106
    :cond_4
    aget-object v5, v1, v4

    aget-object v6, v1, v4

    .line 107
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    aget-object v8, v2, v4

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 106
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    .end local v4    # "i":I
    :cond_5
    return-object v3

    .line 92
    .end local v0    # "size":I
    :cond_6
    :goto_3
    return-object v0

    .line 79
    .end local v1    # "keys1":[Ljava/lang/String;
    .end local v2    # "keys2":[Ljava/lang/String;
    .end local v3    # "context":Landroid/os/Bundle;
    :cond_7
    :goto_4
    return-object v0
.end method

.method public static getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)Landroid/os/Bundle;
    .locals 6
    .param p0, "prevContext"    # Landroid/os/Bundle;
    .param p1, "curContext"    # Landroid/os/Bundle;
    .param p2, "mode"    # Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;

    .line 115
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_5

    .line 119
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/hardware/context/util/PedometerUtil;->getKeys(Lcom/samsung/android/hardware/context/util/PedometerUtil$InfoMode;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "keys":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 121
    return-object v0

    .line 124
    :cond_1
    const/4 v0, 0x2

    if-nez p0, :cond_4

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 126
    if-ge v2, v0, :cond_2

    .line 127
    aget-object v3, v1, v2

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 129
    :cond_2
    aget-object v3, v1, v2

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 133
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 134
    if-ge v2, v0, :cond_5

    .line 135
    aget-object v3, v1, v2

    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_3

    .line 137
    :cond_5
    aget-object v3, v1, v2

    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 133
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    .end local v2    # "i":I
    :cond_6
    :goto_4
    return-object p1

    .line 116
    .end local v1    # "keys":[Ljava/lang/String;
    :cond_7
    :goto_5
    return-object v0
.end method
