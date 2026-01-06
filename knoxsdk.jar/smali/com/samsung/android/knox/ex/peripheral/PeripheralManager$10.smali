.class Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;
.super Lcom/samsung/android/knox/ex/peripheral/IStateListener$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->registerStateListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)V
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

    iput-object p2, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/peripheral/IStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getHashCode()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public greylist onFail(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public greylist onStateChange(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;->onStateChange(ILandroid/os/Bundle;)V

    return-void
.end method

.method public greylist onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;->val$listener:Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;->onSuccess()V

    return-void
.end method
