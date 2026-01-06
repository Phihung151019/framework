.class Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$IpcLL;
.super Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpcLL"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1009
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$IpcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)V

    return-void
.end method


# virtual methods
.method protected blacklist processNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 1

    const/4 v0, 0x0

    .line 1044
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->notifyNonDdsMmsMsg(Z)V

    .line 1046
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->processNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I

    move-result p0

    return p0
.end method

.method protected blacklist processOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 2

    .line 1016
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1020
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$IpcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object v1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result p1

    .line 1024
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->notifyNonDdsMmsMsg(Z)V

    return p1
.end method

.method protected blacklist processRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 2

    .line 1031
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1035
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->clear()V

    .line 1036
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$IpcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRestoreState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
