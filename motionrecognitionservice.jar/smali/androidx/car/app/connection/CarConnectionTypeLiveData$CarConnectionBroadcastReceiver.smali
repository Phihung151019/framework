.class Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarConnectionTypeLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/connection/CarConnectionTypeLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarConnectionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;


# direct methods
.method constructor <init>(Landroidx/car/app/connection/CarConnectionTypeLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/connection/CarConnectionTypeLiveData;

    .line 124
    iput-object p1, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;->this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 127
    iget-object v0, p0, Landroidx/car/app/connection/CarConnectionTypeLiveData$CarConnectionBroadcastReceiver;->this$0:Landroidx/car/app/connection/CarConnectionTypeLiveData;

    invoke-virtual {v0}, Landroidx/car/app/connection/CarConnectionTypeLiveData;->queryForState()V

    .line 128
    return-void
.end method
