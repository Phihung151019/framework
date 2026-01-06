.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "HdrDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;


# direct methods
.method public constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    .line 406
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 407
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 418
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 410
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ead_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$mupdateBLFValue(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V

    .line 412
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$mupdateEADValue(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V

    .line 413
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-virtual {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateHdrMode()V

    .line 415
    :cond_1
    return-void
.end method
