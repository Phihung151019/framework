.class public Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;
.super Ljava/lang/Object;
.source "SamsungExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/SamsungExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UciWaitObj"
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x2710


# instance fields
.field private isHeld:Z

.field private uciPayload:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->isHeld:Z

    return-void
.end method


# virtual methods
.method public blockingNotify()V
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->isHeld:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 552
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->isHeld:Z

    .line 553
    return-void
.end method

.method public blockingTimedWait(J)V
    .locals 1
    .param p1, "timeout"    # J

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->isHeld:Z

    .line 541
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 545
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public blockingWait()V
    .locals 2

    .line 534
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->blockingTimedWait(J)V

    .line 535
    return-void
.end method

.method public getPayload()[B
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->uciPayload:[B

    return-object v0
.end method

.method public setPayload([B)V
    .locals 1
    .param p1, "payload"    # [B

    .line 556
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->uciPayload:[B

    .line 557
    return-void
.end method
