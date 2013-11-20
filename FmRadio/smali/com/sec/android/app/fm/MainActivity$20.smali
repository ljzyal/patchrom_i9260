.class Lcom/sec/android/app/fm/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3811
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$20;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 3814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3815
    .local v3, newText:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-interface {p4, v7, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3816
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3817
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p4, p6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3819
    const-string v5, "^1$|^10$|^10[0-8]$|^10[0-8]\\.$|^10[0-7]\\.\\d$|^108\\.0$|^8$|^8[7-9]$|^8[7-9]\\.$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9$|^9[0-9]$|^9[0-9]\\.$|^9[0-9]\\.\\d$"

    .line 3820
    .local v5, patternString:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v7

    const/16 v8, 0x32

    if-ne v7, v8, :cond_0

    .line 3821
    const-string v5, "^1$|^10$|^10[0-8]$|^10[0-8]\\.$|^10[0-7]\\.\\d$|^108\\.0$|^8$|^8[7-9]$|^8[7-9]\\.$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9$|^9[0-9]$|^9[0-9]\\.$|^9[0-9]\\.\\d$|^10[0-7]\\.\\d[05]$|^87\\.[5-9][05]$|^8[8-9]\\.\\d[05]$|^9[0-9]\\.\\d[05]$"

    .line 3823
    :cond_0
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 3824
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3826
    .local v2, matcher:Ljava/util/regex/Matcher;
    const-string v5, "^10[0-7]\\.\\d$|^108\\.0$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9[0-9]\\.\\d$"

    .line 3827
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v7

    const/16 v8, 0x32

    if-ne v7, v8, :cond_1

    .line 3828
    const-string v5, "^10[0-7]\\.\\d$|^108\\.0$|^87\\.[5-9]$|^8[8-9]\\.\\d$|^9[0-9]\\.\\d$|^10[0-7]\\.\\d[05]$|^87\\.[5-9][05]$|^8[8-9]\\.\\d[05]$|^9[0-9]\\.\\d[05]$"

    .line 3830
    :cond_1
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3832
    .local v0, enablePattern:Ljava/util/regex/Pattern;
    const-string v6, ""

    .line 3833
    .local v6, returnText:Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3834
    .local v1, filteredText:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-interface {p4, v7, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3835
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3836
    move-object v6, p1

    .line 3837
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3839
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p4, p6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3845
    return-object v6
.end method
