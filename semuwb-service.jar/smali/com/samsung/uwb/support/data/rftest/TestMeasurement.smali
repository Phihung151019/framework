.class public abstract Lcom/samsung/uwb/support/data/rftest/TestMeasurement;
.super Ljava/lang/Object;
.source "TestMeasurement.java"


# instance fields
.field public mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/samsung/uwb/support/data/code/StatusCode;

    invoke-direct {v0}, Lcom/samsung/uwb/support/data/code/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/rftest/TestMeasurement;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    return-void
.end method


# virtual methods
.method public abstract getStatus()I
.end method
