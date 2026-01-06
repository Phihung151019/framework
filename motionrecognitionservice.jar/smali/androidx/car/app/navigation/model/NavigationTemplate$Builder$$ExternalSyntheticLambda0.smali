.class public final synthetic Landroidx/car/app/navigation/model/NavigationTemplate$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/model/Toggle$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/navigation/model/PanModeListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/navigation/model/PanModeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/navigation/model/PanModeListener;

    return-void
.end method


# virtual methods
.method public final onCheckedChange(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/navigation/model/PanModeListener;

    invoke-static {v0, p1}, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->lambda$setPanModeListener$0(Landroidx/car/app/navigation/model/PanModeListener;Z)V

    return-void
.end method
