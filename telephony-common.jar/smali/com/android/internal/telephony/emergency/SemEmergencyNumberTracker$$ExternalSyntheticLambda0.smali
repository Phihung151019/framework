.class public final synthetic Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->$r8$lambda$yRtK_Ro7UFbW7hNitu5vAkDxu2Y(Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result p0

    return p0
.end method
