.class Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;
.super Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist onFail(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public greylist onSuccess(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
