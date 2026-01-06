.class Lcom/android/internal/telephony/SemTelephonyTester$1$1;
.super Ljava/lang/Object;
.source "SemTelephonyTester.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemTelephonyTester$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/SemTelephonyTester$1;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyTester$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1$1;->this$1:Lcom/android/internal/telephony/SemTelephonyTester$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Integer;)V
    .locals 2

    .line 366
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1$1;->this$1:Lcom/android/internal/telephony/SemTelephonyTester$1;

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestEnabled - result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->satelliteResultToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 363
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester$1$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
