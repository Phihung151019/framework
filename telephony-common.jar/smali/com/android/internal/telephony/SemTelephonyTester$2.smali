.class Lcom/android/internal/telephony/SemTelephonyTester$2;
.super Ljava/lang/Object;
.source "SemTelephonyTester.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemTelephonyTester;->getProvisionStatusAndSetProvision(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/util/List<",
        "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
        ">;",
        "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemTelephonyTester;


# direct methods
.method public static synthetic blacklist $r8$lambda$4jpV_nl75t3k-2cpgGDY91jdQ00(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;)Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .locals 0

    .line 757
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->getSatelliteSubscriberInfo()Landroid/telephony/satellite/SatelliteSubscriberInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ZROJxZRKgTkXUiK4uwnqI6MYG_A(Landroid/telephony/satellite/SatelliteSubscriberInfo;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyTester;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 751
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$2;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/satellite/SatelliteManager$SatelliteException;)V
    .locals 2

    .line 765
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$2;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSatelliteSubscriberProvisionStatus exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;->getErrorCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 751
    check-cast p1, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester$2;->onError(Landroid/telephony/satellite/SatelliteManager$SatelliteException;)V

    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 751
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester$2;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public blacklist onResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;)V"
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester$2;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSatelliteSubscriberProvisionStatus : onResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/SemTelephonyTester$2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemTelephonyTester$2$$ExternalSyntheticLambda0;-><init>()V

    .line 757
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/SemTelephonyTester$2$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemTelephonyTester$2$$ExternalSyntheticLambda1;-><init>()V

    .line 758
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 759
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 760
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$2;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->setSatelliteProvision(Ljava/util/List;)V

    return-void
.end method
