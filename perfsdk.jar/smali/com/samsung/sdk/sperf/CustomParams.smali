.class public Lcom/samsung/sdk/sperf/CustomParams;
.super Ljava/lang/Object;
.source "CustomParams.java"


# static fields
.field protected static final BOOST_TYPE_NORMAL:I = 0x0

.field protected static final BOOST_TYPE_TASK:I = 0x1

.field public static final TYPE_BUS_MAX:I = 0x5

.field public static final TYPE_BUS_MIN:I = 0x4

.field public static final TYPE_CPU_AWAKE:I = 0xa

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0x7

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0x6

.field public static final TYPE_CPU_MAX:I = 0x1

.field public static final TYPE_CPU_MIN:I = 0x0

.field public static final TYPE_GPU_MAX:I = 0x3

.field public static final TYPE_GPU_MIN:I = 0x2

.field protected static final TYPE_NUM:I = 0xb

.field public static final TYPE_TASK_AFFINITY:I = 0x8

.field public static final TYPE_TASK_PRIORITY:I = 0x9

.field private static sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;


# instance fields
.field private boostObj:Lcom/samsung/sdk/sperf/BoostObject;

.field private isBoostObjUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sdk/sperf/CustomParams;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/CustomParams;->boostObj:Lcom/samsung/sdk/sperf/BoostObject;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sdk/sperf/CustomParams;->isBoostObjUpdated:Z

    .line 223
    return-void
.end method

.method protected static getBoostType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 209
    packed-switch p0, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    return v0

    .line 212
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized add(III)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "level"    # I
    .param p3, "timeout"    # I

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/CustomParams;->boostObj:Lcom/samsung/sdk/sperf/BoostObject;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/samsung/sdk/sperf/BoostObject;

    invoke-direct {v0}, Lcom/samsung/sdk/sperf/BoostObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/sdk/sperf/CustomParams;->boostObj:Lcom/samsung/sdk/sperf/BoostObject;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sdk/sperf/CustomParams;->isBoostObjUpdated:Z

    .line 249
    .end local p0    # "this":Lcom/samsung/sdk/sperf/CustomParams;
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/CustomParams;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    if-nez v0, :cond_1

    .line 250
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfManager;->createInstance(Landroid/content/Context;)Lcom/samsung/sdk/sperf/SPerfManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/sdk/sperf/CustomParams;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 251
    sget-object v0, Lcom/samsung/sdk/sperf/CustomParams;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 252
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 255
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/sdk/sperf/CustomParams;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    iget-object v1, p0, Lcom/samsung/sdk/sperf/CustomParams;->boostObj:Lcom/samsung/sdk/sperf/BoostObject;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/sdk/sperf/SPerfManager;->updateBoost(IIILcom/samsung/sdk/sperf/BoostObject;)I

    move-result v0

    .line 256
    .local v0, "ret":I
    if-ltz v0, :cond_2

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/sdk/sperf/CustomParams;->isBoostObjUpdated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_2
    monitor-exit p0

    return v0

    .line 244
    .end local v0    # "ret":I
    .end local p1    # "type":I
    .end local p2    # "level":I
    .end local p3    # "timeout":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected getBoostObject()Lcom/samsung/sdk/sperf/BoostObject;
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/samsung/sdk/sperf/CustomParams;->isBoostObjUpdated:Z

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/CustomParams;->boostObj:Lcom/samsung/sdk/sperf/BoostObject;

    return-object v0
.end method
