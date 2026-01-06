.class final Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestProvisionSatelliteArgument"
.end annotation


# instance fields
.field public blacklist mIccId:Ljava/lang/String;

.field public blacklist mProvisioned:Z

.field public blacklist mRequestId:J

.field public blacklist mResult:Landroid/os/ResultReceiver;

.field public blacklist mSatelliteSubscriberInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$GPPs2Guzg482dk8UecUQye1Vu18(J)J
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    .line 2449
    rem-long/2addr p0, v0

    return-wide p0
.end method

.method constructor blacklist <init>(Ljava/util/List;Landroid/os/ResultReceiver;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "Z)V"
        }
    .end annotation

    .line 2444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2445
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument;->mSatelliteSubscriberInfoList:Ljava/util/List;

    .line 2446
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument;->mResult:Landroid/os/ResultReceiver;

    .line 2447
    iput-boolean p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument;->mProvisioned:Z

    .line 2448
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$sfgetsNextSatelliteEnableRequestId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument;->mRequestId:J

    return-void
.end method


# virtual methods
.method public blacklist getIccId()Ljava/lang/String;
    .locals 0

    .line 2457
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIccId(Ljava/lang/String;)V
    .locals 0

    .line 2453
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestProvisionSatelliteArgument;->mIccId:Ljava/lang/String;

    return-void
.end method
