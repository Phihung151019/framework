.class public final synthetic Lcom/android/internal/telephony/SemTelephonyTester$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyTester$2;->$r8$lambda$4jpV_nl75t3k-2cpgGDY91jdQ00(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;)Landroid/telephony/satellite/SatelliteSubscriberInfo;

    move-result-object p0

    return-object p0
.end method
