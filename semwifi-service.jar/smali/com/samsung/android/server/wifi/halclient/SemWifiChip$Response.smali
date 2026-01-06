.class public Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMutable:Landroid/os/HidlSupport$Mutable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/HidlSupport$Mutable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/os/HidlSupport$Mutable;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->mMutable:Landroid/os/HidlSupport$Mutable;

    .line 10
    .line 11
    const/16 p1, 0x9

    .line 12
    .line 13
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->mStatusCode:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->mStatusCode:I

    .line 2
    .line 3
    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->mMutable:Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 4
    .line 5
    return-object p0
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->mStatusCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->mMutable:Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    iput-object p1, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method
