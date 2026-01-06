.class public final synthetic Landroidx/car/app/AppManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/HostCall;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/CharSequence;

    iput p2, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final dispatch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Landroidx/car/app/IAppHost;

    invoke-static {v0, v1, p1}, Landroidx/car/app/AppManager;->lambda$showToast$2(Ljava/lang/CharSequence;ILandroidx/car/app/IAppHost;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
