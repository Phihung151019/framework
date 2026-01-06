.class public Landroid/test/SyncBaseInstrumentation;
.super Landroid/test/InstrumentationTestCase;
.source "SyncBaseInstrumentation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_TIME_FOR_SYNC_IN_MINS:I = 0x14


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mTargetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelSyncsandDisableAutoSync()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 83
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    .line 45
    invoke-virtual {p0}, Landroid/test/SyncBaseInstrumentation;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method protected syncProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "ignore_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p2, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v1, "account":Landroid/accounts/Account;
    invoke-static {v1, p3, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 60
    .local v2, "startTimeInMillis":J
    const-wide/32 v4, 0x124f80

    add-long/2addr v4, v2

    .line 62
    .local v4, "endTimeInMillis":J
    const/4 v6, 0x0

    .line 65
    .local v6, "counter":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 67
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-lez v7, :cond_0

    .line 70
    goto :goto_1

    .line 73
    :cond_0
    invoke-static {v1, p3}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    const/4 v6, 0x0

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_2
    :goto_1
    return-void
.end method
