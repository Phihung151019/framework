.class public final synthetic Landroidx/car/app/AppManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/HostCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/serialization/Bundleable;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/serialization/Bundleable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda7;->f$0:Landroidx/car/app/serialization/Bundleable;

    return-void
.end method


# virtual methods
.method public final dispatch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda7;->f$0:Landroidx/car/app/serialization/Bundleable;

    check-cast p1, Landroidx/car/app/IAppHost;

    invoke-static {v0, p1}, Landroidx/car/app/AppManager;->lambda$showAlert$3(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IAppHost;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
