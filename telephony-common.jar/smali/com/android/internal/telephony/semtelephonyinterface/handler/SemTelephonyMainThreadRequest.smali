.class final Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;
.super Ljava/lang/Object;
.source "SemTelephonyMainThreadRequest.java"


# instance fields
.field public final blacklist argument:Ljava/lang/Object;

.field public blacklist phoneId:Ljava/lang/Integer;

.field public blacklist result:Ljava/lang/Object;

.field public blacklist subId:Ljava/lang/Integer;

.field public blacklist workSource:Landroid/os/WorkSource;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->phoneId:Ljava/lang/Integer;

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->workSource:Landroid/os/WorkSource;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Landroid/os/WorkSource;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->phoneId:Ljava/lang/Integer;

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->workSource:Landroid/os/WorkSource;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->phoneId:Ljava/lang/Integer;

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->workSource:Landroid/os/WorkSource;

    if-eqz p2, :cond_0

    .line 61
    iput-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
