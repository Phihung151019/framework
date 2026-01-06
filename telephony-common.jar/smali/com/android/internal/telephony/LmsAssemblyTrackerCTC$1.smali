.class Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;
.super Landroid/content/BroadcastReceiver;
.source "LmsAssemblyTrackerCTC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;->this$0:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$1;->this$0:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
