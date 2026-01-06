.class public final synthetic Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/test/mock/MockContentProvider;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;->f$0:Landroid/test/mock/MockContentProvider;

    iput-object p2, p0, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;->f$0:Landroid/test/mock/MockContentProvider;

    iget-object v1, p0, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    invoke-static {v0, v1, v2}, Landroid/test/mock/MockContentProvider;->$r8$lambda$mrbRP-j_2Xm_gRvp_cg9R72JLlU(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    return-void
.end method
