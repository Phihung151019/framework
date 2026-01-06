.class public interface abstract Lcom/android/internal/telephony/SemTelephonyGateConfigHelper;
.super Ljava/lang/Object;
.source "SemTelephonyGateConfigHelper.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyGateConfigStatics;


# direct methods
.method public static blacklist isGateEnabled()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyGateConfigStatics;->FEATURE_GATE_CONFIG:Z

    return v0
.end method
