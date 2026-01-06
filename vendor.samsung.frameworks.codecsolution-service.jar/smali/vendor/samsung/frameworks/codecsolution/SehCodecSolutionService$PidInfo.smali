.class public Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PidInfo"
.end annotation


# instance fields
.field public date:Ljava/util/Date;

.field public packageName:Ljava/lang/String;

.field public pid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    .line 9
    .line 10
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
