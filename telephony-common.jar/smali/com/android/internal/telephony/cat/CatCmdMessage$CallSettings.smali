.class public Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallSettings"
.end annotation


# instance fields
.field public blacklist address:Ljava/lang/String;

.field public greylist-max-r callMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public greylist-max-r confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
