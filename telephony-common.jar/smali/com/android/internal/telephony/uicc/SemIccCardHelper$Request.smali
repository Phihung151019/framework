.class final Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;
.super Ljava/lang/Object;
.source "SemIccCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SemIccCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field blacklist mResult:Ljava/lang/Object;

.field blacklist mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;->mResult:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SemIccCardHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;-><init>()V

    return-void
.end method
