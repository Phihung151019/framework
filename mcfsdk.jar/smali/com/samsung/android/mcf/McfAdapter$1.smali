.class Lcom/samsung/android/mcf/McfAdapter$1;
.super Ljava/lang/Object;
.source "McfAdapter.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfContext$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/McfAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mcf/McfAdapter;

    .line 404
    iput-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateEvent(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 407
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 419
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;->onServiceRemoteException()V

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;->onServiceDisconnected()V

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;->onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
