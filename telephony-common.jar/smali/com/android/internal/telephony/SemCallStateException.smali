.class public Lcom/android/internal/telephony/SemCallStateException;
.super Lcom/android/internal/telephony/CallStateException;
.source "SemCallStateException.java"


# static fields
.field public static final blacklist CAN_NOT_HOLD_ACTIVE_CALL_FOR_PENDINGMO:Ljava/lang/String; = "can_not_hold_active_call_for_pendingmo"

.field public static final blacklist ERROR_CS_CALL_NOT_AVAILABLE:I = 0x65

.field public static final blacklist ERROR_NOT_POSSIBLE_TO_START_VIDEO_CALL:I = 0x64


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/internal/telephony/CallStateException;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method
