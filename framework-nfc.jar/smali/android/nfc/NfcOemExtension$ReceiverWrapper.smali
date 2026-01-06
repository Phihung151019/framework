.class Landroid/nfc/NfcOemExtension$ReceiverWrapper;
.super Ljava/lang/Object;
.source "NfcOemExtension.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcOemExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1253
    .local p0, "this":Landroid/nfc/NfcOemExtension$ReceiverWrapper;, "Landroid/nfc/NfcOemExtension$ReceiverWrapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p2, p0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 1255
    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/Object;

    .line 1269
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$accept$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 1269
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1259
    .local p0, "this":Landroid/nfc/NfcOemExtension$ReceiverWrapper;, "Landroid/nfc/NfcOemExtension$ReceiverWrapper<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1261
    :cond_0
    instance-of v0, p1, Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "intent"

    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1264
    iget-object v2, p0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1265
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 1266
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/nfc/NfcOemExtension$ReceiverWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/nfc/NfcOemExtension$ReceiverWrapper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1267
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1268
    .local v2, "bundle":Landroid/os/Bundle;
    nop

    .line 1269
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/nfc/NfcOemExtension$ReceiverWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/nfc/NfcOemExtension$ReceiverWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/nfc/NfcOemExtension$ReceiverWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/nfc/NfcOemExtension$ReceiverWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1268
    const-string v4, "packageNames"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1270
    iget-object v3, p0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1273
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist test-api andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 1277
    .local p0, "this":Landroid/nfc/NfcOemExtension$ReceiverWrapper;, "Landroid/nfc/NfcOemExtension$ReceiverWrapper<TT;>;"
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-super {p0, p1}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method
