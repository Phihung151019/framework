.class Landroidx/car/app/connection/CarConnectionTypeLiveData$Api33Impl;
.super Ljava/lang/Object;
.source "CarConnectionTypeLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/connection/CarConnectionTypeLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method static registerExportedReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .line 140
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 141
    return-void
.end method
