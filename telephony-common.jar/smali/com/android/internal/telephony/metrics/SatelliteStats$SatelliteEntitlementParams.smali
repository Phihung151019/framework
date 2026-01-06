.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteEntitlementParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mCount:I

.field private final blacklist mEntitlementDataPolicy:I

.field private final blacklist mEntitlementServiceType:[I

.field private final blacklist mEntitlementStatus:I

.field private final blacklist mIsAllowedServiceEntitlement:Z

.field private final blacklist mIsRetry:Z

.field private final blacklist mResult:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)V
    .locals 0
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

    .line 2837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2838
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mCarrierId:I

    .line 2839
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mResult:I

    .line 2840
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmEntitlementStatus(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementStatus:I

    .line 2841
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmIsRetry(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mIsRetry:Z

    .line 2842
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmCount(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mCount:I

    .line 2843
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmIsAllowedServiceEntitlement(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mIsAllowedServiceEntitlement:Z

    .line 2844
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmEntitlementServiceType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementServiceType:[I

    .line 2845
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->-$$Nest$fgetmEntitlementDataPolicy(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementDataPolicy:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .locals 0

    .line 2849
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getCount()I
    .locals 0

    .line 2865
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mCount:I

    return p0
.end method

.method public blacklist getEntitlementDataPolicy()I
    .locals 0

    .line 2877
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementDataPolicy:I

    return p0
.end method

.method public blacklist getEntitlementServiceType()[I
    .locals 0

    .line 2873
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementServiceType:[I

    return-object p0
.end method

.method public blacklist getEntitlementStatus()I
    .locals 0

    .line 2857
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementStatus:I

    return p0
.end method

.method public blacklist getIsAllowedServiceEntitlement()Z
    .locals 0

    .line 2869
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mIsAllowedServiceEntitlement:Z

    return p0
.end method

.method public blacklist getIsRetry()Z
    .locals 0

    .line 2861
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mIsRetry:Z

    return p0
.end method

.method public blacklist getResult()I
    .locals 0

    .line 2853
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mResult:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteEntitlementParams(carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entitlementStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mIsRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isAllowedServiceEntitlement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mIsAllowedServiceEntitlement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",entitlementServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementServiceType:[I

    .line 2986
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",entitlementServicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->mEntitlementDataPolicy:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
