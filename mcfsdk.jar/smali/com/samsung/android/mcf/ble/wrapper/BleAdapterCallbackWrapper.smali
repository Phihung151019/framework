.class public Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;
.super Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;
.source "BleAdapterCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

.field private mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ble/BleAdapterCallback;Ljava/util/function/BiPredicate;)V
    .locals 0
    .param p1, "callBack"    # Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mcf/ble/BleAdapterCallback;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p2, "onMcfServiceStateChanged":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    .line 22
    return-void
.end method


# virtual methods
.method public getBleAdapterCallback()Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ble/BleAdapterCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMcfServiceStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/ble/BleAdapterCallback;->onMcfServiceStateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
