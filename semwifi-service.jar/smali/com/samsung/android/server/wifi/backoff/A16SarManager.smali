.class public Lcom/samsung/android/server/wifi/backoff/A16SarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "A16SarManager"


# instance fields
.field private final mGripLteSubSensor:Landroid/hardware/Sensor;

.field private mIsGripLteSubSensor:Z

.field private mIsGripping1:Z

.field private mIsGripping2:Z

.field private mIsHeadSar:Z

.field mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

.field private final mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

.field private final mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

.field mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A16SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A16SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A16SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A16SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A16SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A16SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/A16SarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/A16SarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/A16SarManager$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/A16SarManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 17
    .line 18
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/A16SarManager$3;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager$3;-><init>(Lcom/samsung/android/server/wifi/backoff/A16SarManager;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 26
    .line 27
    const p2, 0x10018

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 37
    .line 38
    const p2, 0x10027

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 48
    .line 49
    const p2, 0x10064

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 57
    .line 58
    return-void
.end method

.method private updateBackoffModeForTripleAnt()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : update : mIsGripping1:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping1:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mIsGripping2:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping2:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " mIsGripLteSubSensor:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripLteSubSensor:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " mIsHeadSar "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsHeadSar:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " JdmProximityHeadSarManager.mBackOffStatus "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-boolean v1, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mBackOffStatus:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "SemWifiBackOff.Sar"

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsHeadSar:Z

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mBackOffStatus:Z

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, " : updateBackoffModeForA16 : isHeadSar:"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsHeadSar:Z

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v3, " : updateBackoffModeForA16 : isBodySar:"

    .line 124
    .line 125
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping2:Z

    .line 133
    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping1:Z

    .line 137
    .line 138
    if-eqz v2, :cond_1

    .line 139
    .line 140
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripLteSubSensor:Z

    .line 141
    .line 142
    if-eqz v2, :cond_1

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, " : updateBackoffModeForA16 : mIsGripping2 && mIsGripping1 && mIsGripLteSubSensor:3"

    .line 154
    .line 155
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x3

    .line 163
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_1
    if-eqz v0, :cond_3

    .line 168
    .line 169
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripping1:Z

    .line 170
    .line 171
    if-nez v2, :cond_2

    .line 172
    .line 173
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsGripLteSubSensor:Z

    .line 174
    .line 175
    if-eqz v2, :cond_3

    .line 176
    .line 177
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-string v3, " : updateBackoffModeForA16 :mIsGripping2 && (mIsGripping1 || mIsGripLteSubSensor:2"

    .line 187
    .line 188
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    const/4 v0, 0x2

    .line 196
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_3
    if-eqz v0, :cond_4

    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-string v3, " : updateBackoffModeForA16 :mIsGripping2:1"

    .line 212
    .line 213
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    const-string v3, ": updateBackoffModeForA16 : BODY_HEAD_DISABLE_ANT:-1"

    .line 235
    .line 236
    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    const/4 v0, -0x1

    .line 244
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 245
    .line 246
    .line 247
    return-void
.end method


# virtual methods
.method checkAndSetBackoff(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : checkAndSetBackoff "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "SemWifiBackOff.Sar"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string p0, "checkAndSetBackoff exit"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->updateBackoffModeForTripleAnt()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsHeadSar:Z

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    sget-boolean p1, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mBackOffStatus:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, " : checkAndSetBackoff is false still Head is true "

    .line 64
    .line 65
    invoke-static {p1, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const/4 p1, -0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : enable sensor monitoring : "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "SemWifiBackOff.Sar"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 56
    .line 57
    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "A16SarManager"

    .line 2
    .line 3
    return-object p0
.end method

.method public onBroadcastBackoffState(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->onBroadcastBackoffState(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    const-string v0, "JdmProximityHeadSarManager"

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "JdmReceiverHeadSarManager"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/A16SarManager;->mIsHeadSar:Z

    .line 23
    .line 24
    return-void
.end method
