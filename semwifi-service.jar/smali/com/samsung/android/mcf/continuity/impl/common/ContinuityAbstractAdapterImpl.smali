.class public abstract Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field protected final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

.field protected final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mServiceState:I


# direct methods
.method public static $r8$lambda$9zIBb7iQw8awD01nYqR9TF42vDM(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "-"

    .line 5
    .line 6
    const-string v1, "ContinuityAdapterImpl"

    .line 7
    .line 8
    const-string v2, "bindService"

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string p0, "Please initialize first"

    .line 24
    .line 25
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget v0, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "invalid service state "

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget p2, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    const-string p0, "packageManager is null"

    .line 78
    .line 79
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    new-instance v3, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;

    .line 84
    .line 85
    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$1;-><init>(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)V

    .line 86
    .line 87
    .line 88
    iput-object v3, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string v4, "com.samsung.android.mcfds"

    .line 95
    .line 96
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const-string v5, "Caller"

    .line 101
    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    new-instance v3, Landroid/content/Intent;

    .line 105
    .line 106
    const-string v6, "com.samsung.android.mcfds.ACTION_START_FROM_CONTINUITY_SDK"

    .line 107
    .line 108
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v6, Landroid/content/ComponentName;

    .line 112
    .line 113
    const-string v7, "com.samsung.android.mcfds.McfDeviceSyncService"

    .line 114
    .line 115
    invoke-direct {v6, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    const-string v3, "public"

    .line 130
    .line 131
    const-string v6, "createStartIntent"

    .line 132
    .line 133
    invoke-static {v1, v6, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v3, Landroid/content/Intent;

    .line 137
    .line 138
    const-string v6, "com.samsung.android.mcfds.ACTION_ACCESS_FROM_CONTINUITY_SDK"

    .line 139
    .line 140
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v6, Landroid/content/ComponentName;

    .line 144
    .line 145
    const-string v7, "com.samsung.android.mcfds.McfDeviceSyncPublicService"

    .line 146
    .line 147
    invoke-direct {v6, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const/4 v4, 0x0

    .line 169
    if-nez v0, :cond_4

    .line 170
    .line 171
    move v0, v4

    .line 172
    goto :goto_1

    .line 173
    :cond_4
    const/4 v0, 0x1

    .line 174
    :goto_1
    iget-object v5, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 175
    .line 176
    invoke-virtual {p0, v3, v5, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    const-string p0, "start bindService"

    .line 183
    .line 184
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const/4 p0, 0x2

    .line 188
    iput p0, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 189
    .line 190
    return-void

    .line 191
    :cond_5
    const-string v0, "fail bindService"

    .line 192
    .line 193
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 199
    .line 200
    .line 201
    const/4 p0, 0x0

    .line 202
    iput-object p0, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 203
    .line 204
    iput v4, p2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 205
    .line 206
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;

    .line 207
    .line 208
    const/4 p2, 0x2

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 210
    .line 211
    .line 212
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 13
    .line 14
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager$1;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;-><init>(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->destroy()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->destroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getServiceState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 2
    .line 3
    return p0
.end method

.method protected final handleServiceConnected(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->setIContinuitySdkCommand(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final initialize(Landroid/content/Context;I)I
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->isContinuityFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "initialize"

    .line 6
    .line 7
    const-string v2, "ContinuityAdapterImpl"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "INIT_FAIL_FEATURE_NOT_ENABLED"

    .line 12
    .line 13
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 p0, 0x385

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    const/16 v3, 0x1f

    .line 21
    .line 22
    const/16 v4, 0xb

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eq p2, v3, :cond_4

    .line 26
    .line 27
    packed-switch p2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    if-gt p2, v3, :cond_2

    .line 31
    .line 32
    if-ne p2, v4, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v6, v5

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isMultiControlSettingEnabled(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isVideoCallContinuityEnabled(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_3

    .line 54
    .line 55
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isHardwareShareSettingEnabled(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    :cond_3
    :goto_1
    move v6, v0

    .line 62
    goto :goto_2

    .line 63
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isHardwareShareSettingEnabled(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    goto :goto_2

    .line 68
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isVideoCallContinuityEnabled(Landroid/content/Context;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    goto :goto_2

    .line 73
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    goto :goto_2

    .line 78
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isMultiControlSettingEnabled(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/DLog;->isDebug()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_2
    if-nez v6, :cond_5

    .line 97
    .line 98
    const-string p0, "INIT_FAIL_SETTING_NOT_ENABLED"

    .line 99
    .line 100
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/16 p0, 0x386

    .line 104
    .line 105
    return p0

    .line 106
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->initServiceSupportFeatures(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isServiceSupportAppId(I)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_6

    .line 114
    .line 115
    const-string p0, "INIT_FAIL_APP_ID_NOT_SUPPORTED"

    .line 116
    .line 117
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 p0, 0x387

    .line 121
    .line 122
    return p0

    .line 123
    :cond_6
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-gtz p2, :cond_8

    .line 128
    .line 129
    :cond_7
    :goto_3
    move v0, v5

    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :cond_8
    if-gt p2, v4, :cond_f

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-nez v3, :cond_9

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    goto :goto_4

    .line 142
    :cond_9
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    :goto_4
    if-nez v3, :cond_a

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_a
    array-length v4, v3

    .line 150
    move v6, v5

    .line 151
    :goto_5
    if-ge v6, v4, :cond_7

    .line 152
    .line 153
    aget-object v7, v3, v6

    .line 154
    .line 155
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/DLog;->isDebug()Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_c

    .line 160
    .line 161
    const-string v8, "com.samsung.android.mcf.mydevicesdktest"

    .line 162
    .line 163
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_b

    .line 168
    .line 169
    const-string v8, "com.samsung.android.mcf.continuitysdktest"

    .line 170
    .line 171
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_c

    .line 176
    .line 177
    :cond_b
    :goto_6
    move v7, v0

    .line 178
    goto/16 :goto_7

    .line 179
    .line 180
    :cond_c
    packed-switch p2, :pswitch_data_1

    .line 181
    .line 182
    .line 183
    :cond_d
    move v7, v5

    .line 184
    goto :goto_7

    .line 185
    :pswitch_4
    const-string v8, "com.samsung.android.mydevice"

    .line 186
    .line 187
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    goto :goto_7

    .line 192
    :pswitch_5
    const-string v8, "com.samsung.android.hwresourceshare.storage"

    .line 193
    .line 194
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    goto :goto_7

    .line 199
    :pswitch_6
    const-string v8, "com.samsung.wearable.vstmanager"

    .line 200
    .line 201
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-nez v8, :cond_b

    .line 206
    .line 207
    const-string v8, "com.sec.android.app.SecSetupWizard"

    .line 208
    .line 209
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_d

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :pswitch_7
    const-string v8, "com.sec.android.app.shealth"

    .line 217
    .line 218
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-nez v8, :cond_b

    .line 223
    .line 224
    const-string v8, "com.samsung.android.wear.shealth"

    .line 225
    .line 226
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_d

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :pswitch_8
    const-string v8, "com.samsung.android.bixby.agent"

    .line 234
    .line 235
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    goto :goto_7

    .line 240
    :pswitch_9
    const-string v8, "com.samsung.android.hwresourceshare"

    .line 241
    .line 242
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    goto :goto_7

    .line 247
    :pswitch_a
    const-string v8, "com.samsung.android.vdc"

    .line 248
    .line 249
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    goto :goto_7

    .line 254
    :pswitch_b
    const-string v8, "com.sec.mhs.smarttethering"

    .line 255
    .line 256
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    goto :goto_7

    .line 261
    :pswitch_c
    const-string v8, "com.samsung.android.mdx.kit"

    .line 262
    .line 263
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    goto :goto_7

    .line 268
    :pswitch_d
    const-string v8, "com.samsung.android.app.notes"

    .line 269
    .line 270
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    goto :goto_7

    .line 275
    :pswitch_e
    const-string v8, "com.samsung.android.inputshare"

    .line 276
    .line 277
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    :goto_7
    if-eqz v7, :cond_e

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 285
    .line 286
    goto/16 :goto_5

    .line 287
    .line 288
    :cond_f
    const/16 v4, 0x1e

    .line 289
    .line 290
    if-ge p2, v4, :cond_10

    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :cond_10
    if-ne p2, v4, :cond_11

    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_11
    if-ne p2, v3, :cond_12

    .line 299
    .line 300
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/DLog;->isDebug()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    :cond_12
    :goto_8
    if-nez v0, :cond_13

    .line 305
    .line 306
    const-string p0, "INIT_FAIL_PACKAGE_NOT_REGISTERED"

    .line 307
    .line 308
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const/16 p0, 0x388

    .line 312
    .line 313
    return p0

    .line 314
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;ILandroid/content/Context;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 320
    .line 321
    .line 322
    const/16 p0, 0x384

    .line 323
    .line 324
    return p0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract isMainControllerStarted(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)Z
.end method

.method protected final isServiceConnected()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method protected final registerCallback(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->registerCallback(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, "fail to registerCallback"

    .line 10
    .line 11
    const-string p2, "ContinuityAdapterImpl"

    .line 12
    .line 13
    const-string v0, "registerCallback"

    .line 14
    .line 15
    invoke-static {p2, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    invoke-direct {p0, p4, p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method protected final unbindServiceImpl(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "ContinuityAdapterImpl"

    .line 2
    .line 3
    const-string v1, "unbindServiceImpl"

    .line 4
    .line 5
    const-string v2, "-"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->getAppId()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string p0, "Please initialize first"

    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "invalid service state "

    .line 33
    .line 34
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    const-string v2, "connected, unregister callback"

    .line 56
    .line 57
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;->sendUnregisterCallbackCommand()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 83
    .line 84
    :cond_3
    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mServiceState:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->destroy()V

    .line 88
    .line 89
    .line 90
    return-void
.end method
