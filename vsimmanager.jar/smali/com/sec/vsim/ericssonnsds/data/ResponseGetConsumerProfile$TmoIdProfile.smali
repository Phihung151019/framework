.class public Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile$TmoIdProfile;
.super Ljava/lang/Object;
.source "ResponseGetConsumerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TmoIdProfile"
.end annotation


# instance fields
.field public email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
