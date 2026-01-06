.class public Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
.super Ljava/lang/Object;
.source "SamsungUwbSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UwbSession"
.end annotation


# instance fields
.field private mChannelNumber:I

.field private final mPackageName:Ljava/lang/String;

.field private mParam:Lcom/google/uwb/support/base/Params;

.field private mPpEnable:Z

.field private mPrfMode:I

.field private mProtocolName:Ljava/lang/String;

.field private mRangingDuration:J

.field private mRangingInterval:I

.field private mRangingStartTime:J

.field private final mRemoteMacAddressList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRoundUsage:I

.field private mScheduleMode:I

.field private mServiceType:I

.field private final mSessionId:I

.field private mSessionPid:I

.field private mSessionState:I

.field private final mSessionToken:I

.field private mSlotDuration:I

.field private mStsUsage:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;Lcom/google/uwb/support/oemextension/SessionStatus;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;
    .param p2, "uwbSessionStatus"    # Lcom/google/uwb/support/oemextension/SessionStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPpEnable:Z

    .line 580
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingDuration:J

    .line 581
    iput v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingInterval:I

    .line 584
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRemoteMacAddressList:Ljava/util/HashSet;

    .line 597
    invoke-virtual {p2}, Lcom/google/uwb/support/oemextension/SessionStatus;->getSessionId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionId:I

    .line 598
    invoke-virtual {p2}, Lcom/google/uwb/support/oemextension/SessionStatus;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPackageName:Ljava/lang/String;

    .line 599
    invoke-virtual {p2}, Lcom/google/uwb/support/oemextension/SessionStatus;->getSessionToken()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionToken:I

    .line 600
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->-$$Nest$fgetPP_ALLOW_LIST(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPpEnable:Z

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungUwbSessionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method


# virtual methods
.method public addRemoteMacAddress(J)V
    .locals 2
    .param p1, "remoteMacAddress"    # J

    .line 739
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRemoteMacAddressList:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 740
    return-void
.end method

.method public getChannelNumber()I
    .locals 1

    .line 607
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mChannelNumber:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Lcom/google/uwb/support/base/Params;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mParam:Lcom/google/uwb/support/base/Params;

    return-object v0
.end method

.method public getPpEnable()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPpEnable:Z

    return v0
.end method

.method public getPrfMode()I
    .locals 1

    .line 667
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPrfMode:I

    return v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mProtocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getRangingDuration()J
    .locals 2

    .line 631
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingDuration:J

    return-wide v0
.end method

.method public getRangingInterval()I
    .locals 1

    .line 635
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingInterval:I

    return v0
.end method

.method public getRangingStartTime()J
    .locals 2

    .line 627
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingStartTime:J

    return-wide v0
.end method

.method public getRemoteMacAddressList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRemoteMacAddressList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getRoundUsage()I
    .locals 1

    .line 659
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRoundUsage:I

    return v0
.end method

.method public getScheduledMode()I
    .locals 1

    .line 655
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mScheduleMode:I

    return v0
.end method

.method public getServiceType()I
    .locals 1

    .line 619
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mServiceType:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 611
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionId:I

    return v0
.end method

.method public getSessionPid()I
    .locals 1

    .line 643
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionPid:I

    return v0
.end method

.method public getSessionState()I
    .locals 1

    .line 615
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionState:I

    return v0
.end method

.method public getSessionToken()I
    .locals 1

    .line 743
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionToken:I

    return v0
.end method

.method public getSlotDuration()I
    .locals 1

    .line 663
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSlotDuration:I

    return v0
.end method

.method public getStsUsage()I
    .locals 1

    .line 671
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mStsUsage:I

    return v0
.end method

.method public setChannelNumber(I)V
    .locals 0
    .param p1, "channelNumber"    # I

    .line 675
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mChannelNumber:I

    .line 676
    return-void
.end method

.method public setParam(Lcom/google/uwb/support/base/Params;)V
    .locals 0
    .param p1, "param"    # Lcom/google/uwb/support/base/Params;

    .line 703
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mParam:Lcom/google/uwb/support/base/Params;

    .line 704
    return-void
.end method

.method public setPpEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 687
    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPpEnable:Z

    .line 688
    return-void
.end method

.method public setPrfMode(I)V
    .locals 0
    .param p1, "prfMode"    # I

    .line 723
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mPrfMode:I

    .line 724
    return-void
.end method

.method public setProtocolName(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolName"    # Ljava/lang/String;

    .line 707
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mProtocolName:Ljava/lang/String;

    .line 708
    return-void
.end method

.method public setRangingDuration(J)V
    .locals 0
    .param p1, "value"    # J

    .line 695
    iput-wide p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingDuration:J

    .line 696
    return-void
.end method

.method public setRangingInterval(I)V
    .locals 0
    .param p1, "rangingInterval"    # I

    .line 699
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingInterval:I

    .line 700
    return-void
.end method

.method public setRangingStartTime(J)V
    .locals 0
    .param p1, "value"    # J

    .line 691
    iput-wide p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRangingStartTime:J

    .line 692
    return-void
.end method

.method public setRoundUsage(I)V
    .locals 0
    .param p1, "roundUsage"    # I

    .line 719
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mRoundUsage:I

    .line 720
    return-void
.end method

.method public setScheduledMode(I)V
    .locals 0
    .param p1, "timeScheduled"    # I

    .line 715
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mScheduleMode:I

    .line 716
    return-void
.end method

.method public setServiceType(I)V
    .locals 0
    .param p1, "serviceType"    # I

    .line 683
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mServiceType:I

    .line 684
    return-void
.end method

.method public setSessionPid(I)V
    .locals 0
    .param p1, "pID"    # I

    .line 711
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionPid:I

    .line 712
    return-void
.end method

.method public setSessionState(I)V
    .locals 0
    .param p1, "sessionState"    # I

    .line 679
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSessionState:I

    .line 680
    return-void
.end method

.method public setSlotDuration(I)V
    .locals 0
    .param p1, "slotDuration"    # I

    .line 731
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mSlotDuration:I

    .line 732
    return-void
.end method

.method public setStsUsage(I)V
    .locals 0
    .param p1, "stsUsage"    # I

    .line 727
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->mStsUsage:I

    .line 728
    return-void
.end method
