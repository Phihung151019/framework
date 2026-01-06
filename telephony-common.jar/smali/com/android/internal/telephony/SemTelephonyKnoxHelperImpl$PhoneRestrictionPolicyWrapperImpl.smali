.class Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelperImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneRestrictionPolicyWrapperImpl"
.end annotation


# instance fields
.field blacklist restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;


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

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 314
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    return-void
.end method


# virtual methods
.method public blacklist addNumberOfIncomingCalls()Z
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    move-result p0

    return p0
.end method

.method public blacklist addNumberOfOutgoingCalls()Z
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    move-result p0

    return p0
.end method

.method public blacklist canIncomingCall(Ljava/lang/String;)Z
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist canOutgoingCall(Ljava/lang/String;)Z
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist getEmergencyCallOnly(Z)Z
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataAllowedFromSimSlot(I)Z
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isIncomingCallAllowedFromSimSlot(I)Z
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isMmsAllowedFromSimSlot(I)Z
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isOutgoingCallAllowedFromSimSlot(I)Z
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;->restrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result p0

    return p0
.end method
