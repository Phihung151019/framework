.class Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$ApplicationRestrictionsManagerWrapperImpl;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelperImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationRestrictionsManagerWrapperImpl"
.end annotation


# instance fields
.field blacklist applicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;


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

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$ApplicationRestrictionsManagerWrapperImpl;->applicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    .line 368
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$ApplicationRestrictionsManagerWrapperImpl;->applicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    return-void
.end method


# virtual methods
.method public blacklist getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$ApplicationRestrictionsManagerWrapperImpl;->applicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    invoke-virtual {p0, p1, p2}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
