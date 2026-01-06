.class Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$1;
.super Ljava/lang/Object;
.source "UwbTestNotificationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handlePeriodicTxDataNtf([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

.field final synthetic val$testPeriodicTxData:Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$1;->val$callback:Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

    iput-object p3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$1;->val$testPeriodicTxData:Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$1;->val$callback:Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler$1;->val$testPeriodicTxData:Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;->getStatus()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;->onTestPeriodicTxDataNotificationReceived(I)V

    .line 76
    return-void
.end method
