.class public Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;
.super Ljava/lang/Object;
.source "CaCurrentUtcTimeManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;
    .locals 2

    .line 33
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    .line 37
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    return-object v0

    .line 37
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getUtcTime()[I
    .locals 6

    .line 46
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 47
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    const-string v1, "GMT+00:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 50
    .local v1, "utcTime":[I
    const/4 v2, 0x0

    .line 51
    .local v2, "mPMHour":I
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 52
    const/16 v2, 0xc

    .line 53
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    const/4 v5, 0x0

    aput v3, v1, v5

    .line 54
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    aput v3, v1, v4

    .line 55
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v1, v4

    .line 57
    return-object v1
.end method
