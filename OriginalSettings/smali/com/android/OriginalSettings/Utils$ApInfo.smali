.class public Lcom/android/OriginalSettings/Utils$ApInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 669
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 671
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/OriginalSettings/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 672
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"
    .parameter "secure"

    .prologue
    .line 674
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lcom/android/OriginalSettings/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 676
    iput-object p2, p0, Lcom/android/OriginalSettings/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 677
    return-void
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/OriginalSettings/Utils$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/OriginalSettings/Utils$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
