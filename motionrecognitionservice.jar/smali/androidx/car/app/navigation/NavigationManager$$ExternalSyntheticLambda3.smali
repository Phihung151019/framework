.class public final synthetic Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/navigation/NavigationManagerCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/navigation/NavigationManagerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda3;->f$0:Landroidx/car/app/navigation/NavigationManagerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda3;->f$0:Landroidx/car/app/navigation/NavigationManagerCallback;

    invoke-interface {v0}, Landroidx/car/app/navigation/NavigationManagerCallback;->onAutoDriveEnabled()V

    return-void
.end method
