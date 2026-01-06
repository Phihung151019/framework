.class Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;
.super Ljava/lang/Object;
.source "SemSatellitePhone.java"

# interfaces
.implements Landroid/uwb/UwbManager$AdapterStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemSatellitePhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UwbAdapterStateCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSatellitePhone;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;Lcom/android/internal/telephony/SemSatellitePhone-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;)V

    return-void
.end method


# virtual methods
.method public whitelist onStateChanged(II)V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UwbAdapterStateCallback#onStateChanged() called, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemSatellitePhone;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter state changed reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemSatellitePhone;Ljava/lang/String;)V

    .line 494
    iget-object p2, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p2}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmRadioStateLock(Lcom/android/internal/telephony/SemSatellitePhone;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    if-nez p1, :cond_0

    .line 496
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fputmUwbStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V

    .line 497
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/SemSatellitePhone;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fputmUwbStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;Z)V

    .line 501
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUwbStateEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-static {p0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$fgetmUwbStateEnabled(Lcom/android/internal/telephony/SemSatellitePhone;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemSatellitePhone;Ljava/lang/String;)V

    .line 502
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist toString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 486
    const-string p0, ""

    return-object p0

    .line 483
    :cond_0
    const-string p0, "Active"

    return-object p0

    .line 480
    :cond_1
    const-string p0, "Inactive"

    return-object p0

    .line 477
    :cond_2
    const-string p0, "Disabled"

    return-object p0
.end method
