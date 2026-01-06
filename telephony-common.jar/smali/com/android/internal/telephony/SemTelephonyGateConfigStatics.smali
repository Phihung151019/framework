.class public interface abstract Lcom/android/internal/telephony/SemTelephonyGateConfigStatics;
.super Ljava/lang/Object;
.source "SemTelephonyGateConfigStatics.java"


# static fields
.field public static final blacklist FEATURE_GATE_CONFIG:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SemTelephonyGateConfigStatics;->FEATURE_GATE_CONFIG:Z

    return-void
.end method
