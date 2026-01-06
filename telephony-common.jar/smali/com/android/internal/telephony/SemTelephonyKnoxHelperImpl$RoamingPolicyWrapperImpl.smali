.class Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$RoamingPolicyWrapperImpl;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelperImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoamingPolicyWrapperImpl"
.end annotation


# instance fields
.field blacklist roamingPolicy:Landroid/sec/enterprise/RoamingPolicy;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$RoamingPolicyWrapperImpl;->roamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .line 382
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$RoamingPolicyWrapperImpl;->roamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    return-void
.end method


# virtual methods
.method public blacklist isRoamingDataEnabled()Z
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$RoamingPolicyWrapperImpl;->roamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    invoke-virtual {p0}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result p0

    return p0
.end method
