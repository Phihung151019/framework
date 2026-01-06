.class Lcom/android/internal/telephony/data/PhoneSwitcher$3;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 4

    .line 461
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result p1

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ims registered for slot1 tech changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v0

    aget v0, v0, v3

    if-eq p1, v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v0

    aput p1, v0, v3

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 471
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ims unregistered for slot1 tech changed to REGISTRATION_TECH_NONE from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object p1

    aget p1, p1, v2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 473
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object p1

    aput v0, p1, v2

    .line 474
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
