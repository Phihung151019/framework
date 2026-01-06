.class public Lcom/android/internal/telephony/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String; = "DebugService"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string p0, "DebugService:"

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 3

    .line 86
    sget-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebugService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const/4 p0, 0x0

    if-eqz p3, :cond_6

    .line 46
    array-length v0, p3

    if-lez v0, :cond_6

    .line 47
    aget-object v0, p3, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move p0, v1

    goto :goto_1

    :sswitch_0
    const-string p0, "--clearatoms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string p0, "--metricsproto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string p0, "--saveatoms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string p0, "--metricsprototext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "--metrics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 61
    :pswitch_0
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_5

    .line 62
    const-string p0, "Clearing atoms.."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->clearAtomsStorage()V

    return-void

    .line 55
    :pswitch_1
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_5

    .line 56
    const-string p0, "Saving atoms.."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->flushAtomsStorage()V

    :cond_5
    return-void

    .line 51
    :pswitch_2
    const-string p0, "Collecting telephony metrics.."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 69
    :cond_6
    :goto_2
    new-instance p0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v0, " "

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 70
    const-string v0, "TelephonyDebugService Logging Start"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 73
    const-string v0, "Dump telephony."

    invoke-static {v0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 74
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/PhoneFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 76
    const-string p1, "TelephonyDebugService Logging End"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 80
    const-string p0, "Dump SMS."

    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SmsLogger;->dump(Ljava/io/PrintWriter;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x746ad8dd -> :sswitch_4
        0x1ea00b52 -> :sswitch_3
        0x28324445 -> :sswitch_2
        0x38a4a0a5 -> :sswitch_1
        0x5adc00b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
