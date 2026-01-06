.class public Lcom/android/server/ssrm/fgapps/GameAppUtils;
.super Ljava/lang/Object;
.source "GameAppUtils.java"


# static fields
.field private static final INTERVAL_ONE_DAY:J = 0x5265c00L

.field private static gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;


# instance fields
.field private mIsGamesCheckList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastClearTime:J

.field private final sLowPowerGames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->sLowPowerGames:Ljava/util/HashSet;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->mIsGamesCheckList:Ljava/util/HashMap;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->mLastClearTime:J

    .line 34
    const/16 v0, 0x14

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 36
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x17

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    .line 40
    invoke-direct {p0, v3}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 45
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    .line 50
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    .line 55
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v6

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    .line 59
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    .line 64
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    .line 69
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "gamelist":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 75
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->sLowPowerGames:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
        0x8
        0x13
        0x15
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x16
        0xa
        0x12
        0x1b
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x54
        0x19
        0x1b
        0x9
        0xe
        0x16
        0x1f
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x10
        0xa
        0x54
        0x19
        0x15
        0x16
        0x15
        0xa
        0x16
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x19
        0x1b
        0x14
        0x1e
        0x3
        0x19
        0x8
        0xf
        0x9
        0x12
        0x9
        0x1b
        0x1d
        0x1b
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
        0x48
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0xf
        0xa
        0x1f
        0x8
        0x19
        0x1f
        0x16
        0x16
        0x54
        0x19
        0x16
        0x1b
        0x9
        0x12
        0x15
        0x1c
        0x19
        0x16
        0x1b
        0x14
        0x9
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ssrm/fgapps/GameAppUtils;
    .locals 2

    const-class v0, Lcom/android/server/ssrm/fgapps/GameAppUtils;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;

    invoke-direct {v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 30
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isLowPowerGameApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->sLowPowerGames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private x([I)Ljava/lang/String;
    .locals 1
    .param p1, "raw"    # [I

    .line 115
    invoke-static {p1}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isGame(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "gms":Lcom/samsung/android/game/IGameManagerService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 87
    .local v1, "currentTime":J
    iget-wide v3, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->mLastClearTime:J

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->mIsGamesCheckList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 89
    iput-wide v1, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->mLastClearTime:J

    goto :goto_0

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->mIsGamesCheckList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 92
    .local v3, "isGame":Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 98
    .end local v3    # "isGame":Ljava/lang/Boolean;
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 99
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_2

    .line 100
    invoke-static {v3}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v4

    move-object v0, v4

    .line 102
    :cond_2
    if-eqz v0, :cond_5

    .line 103
    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v4

    .line 104
    .local v4, "ret":I
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->mIsGamesCheckList:Ljava/util/HashMap;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v6

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    if-ne v4, v7, :cond_4

    move v6, v7

    :cond_4
    return v6

    .line 109
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "ret":I
    :cond_5
    goto :goto_2

    .line 107
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->isLowPowerGameApp(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method
