.class public Lcom/android/internal/telephony/SemTelephonyDexHelperImpl;
.super Ljava/lang/Object;
.source "SemTelephonyDexHelperImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyDexHelper;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDexEnabled(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x72

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
