.class Lcom/samsung/sdk/sperf/SPerfInitThread;
.super Ljava/lang/Object;
.source "SPerfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/SPerfInitThread;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    return-void
.end method


# virtual methods
.method public getSPerfManager()Lcom/samsung/sdk/sperf/SPerfManager;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SPerfInitThread;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 150
    :try_start_0
    invoke-static {}, Lcom/samsung/sdk/sperf/SPerfManager;->initSPerfManager()Lcom/samsung/sdk/sperf/SPerfManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/SPerfInitThread;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/sdk/sperf/SPerfInitThread;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 153
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Ljava/lang/IllegalThreadStateException;
    :goto_0
    return-void
.end method
