.class Lcom/android/internal/telephony/euicc/EuiccController$1;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->startOtaUpdatingIfNecessary(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$1;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEuiccServiceUnavailable()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onOtaStatusChanged(I)V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$1;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendOtaStatusChangedBroadcast()V

    return-void
.end method
