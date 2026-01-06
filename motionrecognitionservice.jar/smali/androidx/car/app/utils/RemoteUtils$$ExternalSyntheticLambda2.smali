.class public final synthetic Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/utils/RemoteUtils$RemoteCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/IOnDoneCallback;

.field public final synthetic f$1:Ljava/lang/Throwable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;->f$0:Landroidx/car/app/IOnDoneCallback;

    iput-object p2, p0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Throwable;

    iput-object p3, p0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;->f$0:Landroidx/car/app/IOnDoneCallback;

    iget-object v1, p0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Throwable;

    iget-object v2, p0, Landroidx/car/app/utils/RemoteUtils$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/car/app/utils/RemoteUtils;->lambda$sendFailureResponseToHost$4(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
